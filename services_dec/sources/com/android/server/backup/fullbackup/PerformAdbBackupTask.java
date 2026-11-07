package com.android.server.backup.fullbackup;

import android.app.backup.IFullBackupRestoreObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Slog;
import com.android.server.AppWidgetBackupBridge;
import com.android.server.backup.BackupManagerService;
import com.android.server.backup.BackupPasswordManager;
import com.android.server.backup.BackupRestoreTask;
import com.android.server.backup.KeyValueAdbBackupEngine;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.utils.AppBackupUtils;
import com.android.server.backup.utils.PasswordUtils;
import com.android.server.job.controllers.JobStatus;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class PerformAdbBackupTask extends FullBackupTask implements BackupRestoreTask {
    private final boolean mAllApps;
    private final boolean mCompress;
    private final int mCurrentOpToken;
    private final String mCurrentPassword;
    private PackageInfo mCurrentTarget;
    private final boolean mDoWidgets;
    private final String mEncryptPassword;
    private final boolean mIncludeApks;
    private final boolean mIncludeObbs;
    private final boolean mIncludeShared;
    private final boolean mIncludeSystem;
    private final boolean mKeyValue;
    private final AtomicBoolean mLatch;
    private final ParcelFileDescriptor mOutputFile;
    private final ArrayList<String> mPackages;
    private final UserBackupManagerService mUserBackupManagerService;

    public PerformAdbBackupTask(UserBackupManagerService backupManagerService, ParcelFileDescriptor fd, IFullBackupRestoreObserver observer, boolean includeApks, boolean includeObbs, boolean includeShared, boolean doWidgets, String curPassword, String encryptPassword, boolean doAllApps, boolean doSystem, boolean doCompress, boolean doKeyValue, String[] packages, AtomicBoolean latch) {
        ArrayList<String> arrayList;
        super(observer);
        this.mUserBackupManagerService = backupManagerService;
        this.mCurrentOpToken = backupManagerService.generateRandomIntegerToken();
        this.mLatch = latch;
        this.mOutputFile = fd;
        this.mIncludeApks = includeApks;
        this.mIncludeObbs = includeObbs;
        this.mIncludeShared = includeShared;
        this.mDoWidgets = doWidgets;
        this.mAllApps = doAllApps;
        this.mIncludeSystem = doSystem;
        if (packages == null) {
            arrayList = new ArrayList<>();
        } else {
            arrayList = new ArrayList<>(Arrays.asList(packages));
        }
        this.mPackages = arrayList;
        this.mCurrentPassword = curPassword;
        if (encryptPassword == null || "".equals(encryptPassword)) {
            this.mEncryptPassword = curPassword;
        } else {
            this.mEncryptPassword = encryptPassword;
        }
        this.mCompress = doCompress;
        this.mKeyValue = doKeyValue;
    }

    private void addPackagesToSet(TreeMap<String, PackageInfo> set, List<String> pkgNames) {
        for (String pkgName : pkgNames) {
            if (!set.containsKey(pkgName)) {
                try {
                    PackageInfo info = this.mUserBackupManagerService.getPackageManager().getPackageInfo(pkgName, AudioFormat.OPUS);
                    set.put(pkgName, info);
                } catch (PackageManager.NameNotFoundException e) {
                    Slog.w(BackupManagerService.TAG, "Unknown package " + pkgName + ", skipping");
                }
            }
        }
    }

    private OutputStream emitAesBackupHeader(StringBuilder headerbuf, OutputStream ofstream) throws Exception {
        byte[] newUserSalt = this.mUserBackupManagerService.randomBytes(512);
        SecretKey userKey = PasswordUtils.buildPasswordKey(BackupPasswordManager.PBKDF_CURRENT, this.mEncryptPassword, newUserSalt, 10000);
        byte[] masterPw = new byte[32];
        this.mUserBackupManagerService.getRng().nextBytes(masterPw);
        byte[] checksumSalt = this.mUserBackupManagerService.randomBytes(512);
        Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
        SecretKeySpec masterKeySpec = new SecretKeySpec(masterPw, "AES");
        c.init(1, masterKeySpec);
        OutputStream finalOutput = new CipherOutputStream(ofstream, c);
        headerbuf.append(PasswordUtils.ENCRYPTION_ALGORITHM_NAME);
        headerbuf.append('\n');
        headerbuf.append(PasswordUtils.byteArrayToHex(newUserSalt));
        headerbuf.append('\n');
        headerbuf.append(PasswordUtils.byteArrayToHex(checksumSalt));
        headerbuf.append('\n');
        headerbuf.append(10000);
        headerbuf.append('\n');
        Cipher mkC = Cipher.getInstance("AES/CBC/PKCS5Padding");
        mkC.init(1, userKey);
        headerbuf.append(PasswordUtils.byteArrayToHex(mkC.getIV()));
        headerbuf.append('\n');
        byte[] IV = c.getIV();
        byte[] mk = masterKeySpec.getEncoded();
        byte[] checksum = PasswordUtils.makeKeyChecksum(BackupPasswordManager.PBKDF_CURRENT, masterKeySpec.getEncoded(), checksumSalt, 10000);
        ByteArrayOutputStream blob = new ByteArrayOutputStream(IV.length + mk.length + checksum.length + 3);
        DataOutputStream mkOut = new DataOutputStream(blob);
        mkOut.writeByte(IV.length);
        mkOut.write(IV);
        mkOut.writeByte(mk.length);
        mkOut.write(mk);
        mkOut.writeByte(checksum.length);
        mkOut.write(checksum);
        mkOut.flush();
        byte[] encryptedMk = mkC.doFinal(blob.toByteArray());
        headerbuf.append(PasswordUtils.byteArrayToHex(encryptedMk));
        headerbuf.append('\n');
        return finalOutput;
    }

    private void finalizeBackup(OutputStream out) {
        try {
            byte[] eof = new byte[1024];
            out.write(eof);
        } catch (IOException e) {
            Slog.w(BackupManagerService.TAG, "Error attempting to finalize backup stream");
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0261 A[Catch: all -> 0x012a, RemoteException -> 0x0143, Exception -> 0x023c, TRY_ENTER, TRY_LEAVE, TryCatch #55 {Exception -> 0x023c, blocks: (B:97:0x0236, B:104:0x0261), top: B:353:0x0236 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0272  */
    /* JADX WARN: Code duplicated, block: B:120:0x02bd A[Catch: all -> 0x0572, Exception -> 0x0581, RemoteException -> 0x058f, TRY_ENTER, TRY_LEAVE, TryCatch #35 {RemoteException -> 0x058f, Exception -> 0x0581, all -> 0x0572, blocks: (B:108:0x0277, B:120:0x02bd), top: B:378:0x0277 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0331  */
    /* JADX WARN: Code duplicated, block: B:141:0x0350  */
    /* JADX WARN: Code duplicated, block: B:145:0x0360 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:158:0x0395  */
    /* JADX WARN: Code duplicated, block: B:205:0x04ae A[Catch: all -> 0x04fb, Exception -> 0x0501, RemoteException -> 0x0506, TRY_LEAVE, TryCatch #38 {RemoteException -> 0x0506, Exception -> 0x0501, all -> 0x04fb, blocks: (B:202:0x04a4, B:203:0x04a8, B:205:0x04ae), top: B:372:0x04a4 }] */
    /* JADX WARN: Code duplicated, block: B:324:0x0673 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:326:0x069d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:330:0x027b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:332:0x0651 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:334:0x053a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:336:0x0510 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:338:0x0627 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:341:0x024a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:343:0x05b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:345:0x05dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:347:0x06c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:349:0x01c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:351:0x06f1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:353:0x0236 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:355:0x01f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:369:0x02c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:372:0x04a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x014f  */
    /* JADX WARN: Code duplicated, block: B:74:0x01bf A[Catch: all -> 0x012a, Exception -> 0x0137, RemoteException -> 0x0143, TRY_ENTER, TRY_LEAVE, TryCatch #32 {Exception -> 0x0137, blocks: (B:41:0x0120, B:55:0x015c, B:74:0x01bf), top: B:340:0x0120 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0217 A[Catch: all -> 0x0607, Exception -> 0x0614, RemoteException -> 0x0660, TRY_ENTER, TRY_LEAVE, TryCatch #17 {Exception -> 0x0614, blocks: (B:39:0x011c, B:52:0x0152, B:72:0x01b5, B:90:0x0217, B:95:0x0231), top: B:328:0x011c }] */
    /* JADX WARN: Code duplicated, block: B:92:0x022c  */
    /* JADX WARN: Code duplicated, block: B:94:0x022f  */
    /* JADX WARN: Instruction removed from duplicated block: B:205:0x04ae, please report this as an issue */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 5 */
    @Override // java.lang.Runnable
    public void run() throws Exception {
        boolean z;
        Throwable th;
        boolean z2;
        boolean z3;
        boolean encrypting;
        OutputStream finalOutput;
        StringBuilder headerbuf;
        String str;
        OutputStream finalOutput2;
        OutputStream out;
        int N;
        int i;
        OutputStream out2;
        ArrayList<PackageInfo> keyValueBackupQueue;
        PackageInfo pkg;
        boolean isSharedStorage;
        OutputStream out3;
        PackageInfo pkg2;
        String str2;
        OutputStream out4;
        List<String> pkgs;
        String includeKeyValue = this.mKeyValue ? ", including key-value backups" : "";
        Slog.i(BackupManagerService.TAG, "--- Performing adb backup" + includeKeyValue + " ---");
        TreeMap<String, PackageInfo> packagesToBackup = new TreeMap<>();
        FullBackupObbConnection obbConnection = new FullBackupObbConnection(this.mUserBackupManagerService);
        obbConnection.establish();
        sendStartBackup();
        PackageManager pm = this.mUserBackupManagerService.getPackageManager();
        boolean z4 = true;
        if (this.mAllApps) {
            List<PackageInfo> allPackages = pm.getInstalledPackages(AudioFormat.OPUS);
            for (int i2 = 0; i2 < allPackages.size(); i2++) {
                PackageInfo pkg3 = allPackages.get(i2);
                if (this.mIncludeSystem || (pkg3.applicationInfo.flags & 1) == 0) {
                    packagesToBackup.put(pkg3.packageName, pkg3);
                }
            }
        }
        if (this.mDoWidgets && (pkgs = AppWidgetBackupBridge.getWidgetParticipants(0)) != null) {
            addPackagesToSet(packagesToBackup, pkgs);
        }
        List<String> pkgs2 = this.mPackages;
        if (pkgs2 != null) {
            addPackagesToSet(packagesToBackup, pkgs2);
        }
        ArrayList<PackageInfo> keyValueBackupQueue2 = new ArrayList<>();
        Iterator<Map.Entry<String, PackageInfo>> iter = packagesToBackup.entrySet().iterator();
        while (iter.hasNext()) {
            PackageInfo pkg4 = iter.next().getValue();
            if (!AppBackupUtils.appIsEligibleForBackup(pkg4.applicationInfo, this.mUserBackupManagerService.getUserId()) || AppBackupUtils.appIsStopped(pkg4.applicationInfo)) {
                iter.remove();
                Slog.i(BackupManagerService.TAG, "Package " + pkg4.packageName + " is not eligible for backup, removing.");
            } else if (AppBackupUtils.appIsKeyValueOnly(pkg4)) {
                iter.remove();
                Slog.i(BackupManagerService.TAG, "Package " + pkg4.packageName + " is key-value.");
                keyValueBackupQueue2.add(pkg4);
            }
        }
        ArrayList<PackageInfo> backupQueue = new ArrayList<>(packagesToBackup.values());
        FileOutputStream ofstream = new FileOutputStream(this.mOutputFile.getFileDescriptor());
        OutputStream out5 = null;
        try {
            try {
                try {
                    if (this.mEncryptPassword != null) {
                        try {
                            try {
                                if (this.mEncryptPassword.length() > 0) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                encrypting = z3;
                                if (!this.mUserBackupManagerService.deviceIsEncrypted() && !encrypting) {
                                    Slog.e(BackupManagerService.TAG, "Unencrypted backup of encrypted device; aborting");
                                    if (0 != 0) {
                                        try {
                                            out5.flush();
                                            out5.close();
                                        } catch (IOException e) {
                                            Slog.e(BackupManagerService.TAG, "IO error closing adb backup file: " + e.getMessage());
                                        }
                                    }
                                    this.mOutputFile.close();
                                    synchronized (this.mLatch) {
                                        this.mLatch.set(true);
                                        this.mLatch.notifyAll();
                                    }
                                    sendEndBackup();
                                    obbConnection.tearDown();
                                    Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                    this.mUserBackupManagerService.getWakelock().release();
                                    return;
                                }
                                finalOutput = ofstream;
                                if (!this.mUserBackupManagerService.backupPasswordMatches(this.mCurrentPassword)) {
                                    Slog.w(BackupManagerService.TAG, "Backup password mismatch; aborting");
                                    if (0 != 0) {
                                        try {
                                            out5.flush();
                                            out5.close();
                                        } catch (IOException e2) {
                                            Slog.e(BackupManagerService.TAG, "IO error closing adb backup file: " + e2.getMessage());
                                        }
                                    }
                                    this.mOutputFile.close();
                                    synchronized (this.mLatch) {
                                        this.mLatch.set(true);
                                        this.mLatch.notifyAll();
                                    }
                                    sendEndBackup();
                                    obbConnection.tearDown();
                                    Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                    this.mUserBackupManagerService.getWakelock().release();
                                    return;
                                }
                                headerbuf = new StringBuilder(1024);
                                headerbuf.append(UserBackupManagerService.BACKUP_FILE_HEADER_MAGIC);
                                headerbuf.append(5);
                                if (this.mCompress) {
                                    str = "\n1\n";
                                } else {
                                    str = "\n0\n";
                                }
                                headerbuf.append(str);
                                if (encrypting) {
                                    try {
                                        finalOutput = emitAesBackupHeader(headerbuf, finalOutput);
                                    } catch (Exception e3) {
                                        e = e3;
                                        try {
                                            Slog.e(BackupManagerService.TAG, "Unable to emit archive header", e);
                                            if (0 != 0) {
                                                try {
                                                    out5.flush();
                                                    out5.close();
                                                } catch (IOException e4) {
                                                    Slog.e(BackupManagerService.TAG, "IO error closing adb backup file: " + e4.getMessage());
                                                    synchronized (this.mLatch) {
                                                        this.mLatch.set(true);
                                                        this.mLatch.notifyAll();
                                                        sendEndBackup();
                                                        obbConnection.tearDown();
                                                        Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                                        this.mUserBackupManagerService.getWakelock().release();
                                                        return;
                                                    }
                                                }
                                            }
                                            this.mOutputFile.close();
                                            synchronized (this.mLatch) {
                                                this.mLatch.set(true);
                                                this.mLatch.notifyAll();
                                                sendEndBackup();
                                                obbConnection.tearDown();
                                                Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                                this.mUserBackupManagerService.getWakelock().release();
                                                return;
                                            }
                                        } catch (RemoteException e5) {
                                            Slog.e(BackupManagerService.TAG, "App died during full backup");
                                            if (out5 != null) {
                                                try {
                                                    out5.flush();
                                                    out5.close();
                                                } catch (IOException e6) {
                                                    Slog.e(BackupManagerService.TAG, "IO error closing adb backup file: " + e6.getMessage());
                                                    synchronized (this.mLatch) {
                                                        this.mLatch.set(z2);
                                                        this.mLatch.notifyAll();
                                                    }
                                                    sendEndBackup();
                                                    obbConnection.tearDown();
                                                    Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                                    this.mUserBackupManagerService.getWakelock().release();
                                                }
                                            }
                                            this.mOutputFile.close();
                                            synchronized (this.mLatch) {
                                                this.mLatch.set(z2);
                                                this.mLatch.notifyAll();
                                                sendEndBackup();
                                                obbConnection.tearDown();
                                                Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                                this.mUserBackupManagerService.getWakelock().release();
                                            }
                                        } catch (Exception e7) {
                                            e = e7;
                                        }
                                    }
                                } else {
                                    try {
                                        headerbuf.append("none\n");
                                    } catch (Exception e8) {
                                        e = e8;
                                        Slog.e(BackupManagerService.TAG, "Unable to emit archive header", e);
                                        if (0 != 0) {
                                            out5.flush();
                                            out5.close();
                                        }
                                        this.mOutputFile.close();
                                        synchronized (this.mLatch) {
                                            this.mLatch.set(true);
                                            this.mLatch.notifyAll();
                                        }
                                        sendEndBackup();
                                        obbConnection.tearDown();
                                        Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                        this.mUserBackupManagerService.getWakelock().release();
                                        return;
                                    }
                                }
                                byte[] header = headerbuf.toString().getBytes("UTF-8");
                                ofstream.write(header);
                                if (this.mCompress) {
                                    Deflater deflater = new Deflater(9);
                                    finalOutput2 = new DeflaterOutputStream(finalOutput, deflater, true);
                                } else {
                                    finalOutput2 = finalOutput;
                                }
                                out = finalOutput2;
                                try {
                                    if (this.mIncludeShared) {
                                        N = backupQueue.size();
                                        i = 0;
                                        while (i < N) {
                                            pkg = backupQueue.get(i);
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("--- Performing full backup for package ");
                                            sb.append(pkg.packageName);
                                            sb.append(" ---");
                                            Slog.i(BackupManagerService.TAG, sb.toString());
                                            isSharedStorage = pkg.packageName.equals(UserBackupManagerService.SHARED_BACKUP_AGENT_PACKAGE);
                                            ArrayList<PackageInfo> keyValueBackupQueue3 = keyValueBackupQueue2;
                                            int i3 = i;
                                            out3 = out;
                                            StringBuilder headerbuf2 = headerbuf;
                                            FileOutputStream ofstream2 = ofstream;
                                            ArrayList<PackageInfo> backupQueue2 = backupQueue;
                                            PackageManager pm2 = pm;
                                            FullBackupEngine mBackupEngine = new FullBackupEngine(this.mUserBackupManagerService, out, null, pkg, this.mIncludeApks, this, JobStatus.NO_LATEST_RUNTIME, this.mCurrentOpToken, 0);
                                            if (isSharedStorage) {
                                                str2 = "Shared storage";
                                                pkg2 = pkg;
                                            } else {
                                                pkg2 = pkg;
                                                str2 = pkg2.packageName;
                                            }
                                            sendOnBackupPackage(str2);
                                            this.mCurrentTarget = pkg2;
                                            mBackupEngine.backupOnePackage();
                                            if (this.mIncludeObbs) {
                                                out4 = out3;
                                            } else {
                                                out4 = out3;
                                            }
                                            out = out4;
                                            pm = pm2;
                                            headerbuf = headerbuf2;
                                            ofstream = ofstream2;
                                            keyValueBackupQueue2 = keyValueBackupQueue3;
                                            backupQueue = backupQueue2;
                                            z4 = true;
                                            i = i3 + 1;
                                        }
                                        out2 = out;
                                        keyValueBackupQueue = keyValueBackupQueue2;
                                        if (this.mKeyValue) {
                                            for (PackageInfo keyValuePackage : keyValueBackupQueue) {
                                                Slog.i(BackupManagerService.TAG, "--- Performing key-value backup for package " + keyValuePackage.packageName + " ---");
                                                KeyValueAdbBackupEngine kvBackupEngine = new KeyValueAdbBackupEngine(out2, keyValuePackage, this.mUserBackupManagerService, this.mUserBackupManagerService.getPackageManager(), this.mUserBackupManagerService.getBaseStateDir(), this.mUserBackupManagerService.getDataDir());
                                                sendOnBackupPackage(keyValuePackage.packageName);
                                                kvBackupEngine.backupOnePackage();
                                            }
                                        }
                                        finalizeBackup(out2);
                                        if (out2 != null) {
                                            out2.flush();
                                            out2.close();
                                        }
                                        this.mOutputFile.close();
                                        synchronized (this.mLatch) {
                                            this.mLatch.set(true);
                                            this.mLatch.notifyAll();
                                            sendEndBackup();
                                            obbConnection.tearDown();
                                            Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                            this.mUserBackupManagerService.getWakelock().release();
                                            return;
                                        }
                                    }
                                    try {
                                        try {
                                            backupQueue.add(this.mUserBackupManagerService.getPackageManager().getPackageInfo(UserBackupManagerService.SHARED_BACKUP_AGENT_PACKAGE, 0));
                                        } catch (PackageManager.NameNotFoundException e9) {
                                            Slog.e(BackupManagerService.TAG, "Unable to find shared-storage backup handler");
                                        }
                                        N = backupQueue.size();
                                        i = 0;
                                        while (i < N) {
                                            try {
                                                pkg = backupQueue.get(i);
                                                try {
                                                    StringBuilder sb2 = new StringBuilder();
                                                    try {
                                                        sb2.append("--- Performing full backup for package ");
                                                        sb2.append(pkg.packageName);
                                                        sb2.append(" ---");
                                                        Slog.i(BackupManagerService.TAG, sb2.toString());
                                                        isSharedStorage = pkg.packageName.equals(UserBackupManagerService.SHARED_BACKUP_AGENT_PACKAGE);
                                                        ArrayList<PackageInfo> keyValueBackupQueue4 = keyValueBackupQueue2;
                                                        try {
                                                            int i4 = i;
                                                            out3 = out;
                                                            StringBuilder headerbuf3 = headerbuf;
                                                            FileOutputStream ofstream3 = ofstream;
                                                            ArrayList<PackageInfo> backupQueue3 = backupQueue;
                                                            PackageManager pm3 = pm;
                                                            try {
                                                                FullBackupEngine mBackupEngine2 = new FullBackupEngine(this.mUserBackupManagerService, out, null, pkg, this.mIncludeApks, this, JobStatus.NO_LATEST_RUNTIME, this.mCurrentOpToken, 0);
                                                                if (isSharedStorage) {
                                                                    str2 = "Shared storage";
                                                                    pkg2 = pkg;
                                                                } else {
                                                                    pkg2 = pkg;
                                                                    str2 = pkg2.packageName;
                                                                }
                                                                try {
                                                                    sendOnBackupPackage(str2);
                                                                    this.mCurrentTarget = pkg2;
                                                                    mBackupEngine2.backupOnePackage();
                                                                    if (this.mIncludeObbs || isSharedStorage) {
                                                                        out4 = out3;
                                                                    } else {
                                                                        out4 = out3;
                                                                        try {
                                                                            boolean obbOkay = obbConnection.backupObbs(pkg2, out4);
                                                                            if (!obbOkay) {
                                                                                throw new RuntimeException("Failure writing OBB stack for " + pkg2);
                                                                            }
                                                                        } catch (RemoteException e10) {
                                                                            out5 = out4;
                                                                            z2 = true;
                                                                            Slog.e(BackupManagerService.TAG, "App died during full backup");
                                                                            if (out5 != null) {
                                                                                out5.flush();
                                                                                out5.close();
                                                                            }
                                                                            this.mOutputFile.close();
                                                                            synchronized (this.mLatch) {
                                                                                this.mLatch.set(z2);
                                                                                this.mLatch.notifyAll();
                                                                                sendEndBackup();
                                                                                obbConnection.tearDown();
                                                                                Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                                                                this.mUserBackupManagerService.getWakelock().release();
                                                                            }
                                                                        } catch (Exception e11) {
                                                                            e = e11;
                                                                            out5 = out4;
                                                                            z4 = true;
                                                                        } catch (Throwable th2) {
                                                                            th = th2;
                                                                            out5 = out4;
                                                                            z = true;
                                                                            if (out5 != null) {
                                                                                try {
                                                                                    out5.flush();
                                                                                    out5.close();
                                                                                } catch (IOException e12) {
                                                                                    Slog.e(BackupManagerService.TAG, "IO error closing adb backup file: " + e12.getMessage());
                                                                                    synchronized (this.mLatch) {
                                                                                        this.mLatch.set(z);
                                                                                        this.mLatch.notifyAll();
                                                                                    }
                                                                                    sendEndBackup();
                                                                                    obbConnection.tearDown();
                                                                                    Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                                                                    this.mUserBackupManagerService.getWakelock().release();
                                                                                    throw th;
                                                                                }
                                                                            }
                                                                            this.mOutputFile.close();
                                                                            synchronized (this.mLatch) {
                                                                                this.mLatch.set(z);
                                                                                this.mLatch.notifyAll();
                                                                                sendEndBackup();
                                                                                obbConnection.tearDown();
                                                                                Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                                                                this.mUserBackupManagerService.getWakelock().release();
                                                                                throw th;
                                                                            }
                                                                        }
                                                                    }
                                                                    out = out4;
                                                                    pm = pm3;
                                                                    headerbuf = headerbuf3;
                                                                    ofstream = ofstream3;
                                                                    keyValueBackupQueue2 = keyValueBackupQueue4;
                                                                    backupQueue = backupQueue3;
                                                                    z4 = true;
                                                                    i = i4 + 1;
                                                                } catch (RemoteException e13) {
                                                                    out5 = out3;
                                                                    z2 = true;
                                                                } catch (Exception e14) {
                                                                    e = e14;
                                                                    out5 = out3;
                                                                    z4 = true;
                                                                } catch (Throwable th3) {
                                                                    th = th3;
                                                                    out5 = out3;
                                                                    z = true;
                                                                }
                                                            } catch (RemoteException e15) {
                                                                out5 = out3;
                                                                z2 = true;
                                                            } catch (Exception e16) {
                                                                e = e16;
                                                                out5 = out3;
                                                                z4 = true;
                                                            } catch (Throwable th4) {
                                                                th = th4;
                                                                out5 = out3;
                                                                z = true;
                                                            }
                                                        } catch (RemoteException e17) {
                                                            out5 = out;
                                                            z2 = true;
                                                        } catch (Exception e18) {
                                                            e = e18;
                                                            out5 = out;
                                                            z4 = true;
                                                        } catch (Throwable th5) {
                                                            th = th5;
                                                            out5 = out;
                                                            z = true;
                                                        }
                                                    } catch (RemoteException e19) {
                                                        out5 = out;
                                                        z2 = true;
                                                    } catch (Exception e20) {
                                                        e = e20;
                                                        out5 = out;
                                                        z4 = true;
                                                    } catch (Throwable th6) {
                                                        th = th6;
                                                        out5 = out;
                                                        z = true;
                                                    }
                                                } catch (RemoteException e21) {
                                                    out5 = out;
                                                    z2 = z4;
                                                } catch (Exception e22) {
                                                    e = e22;
                                                    out5 = out;
                                                    z4 = z4;
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    out5 = out;
                                                    z = z4;
                                                }
                                            } catch (RemoteException e23) {
                                                out5 = out;
                                                z2 = z4;
                                            } catch (Exception e24) {
                                                e = e24;
                                                out5 = out;
                                                z4 = z4;
                                            } catch (Throwable th8) {
                                                th = th8;
                                                out5 = out;
                                                z = z4;
                                            }
                                        }
                                        out2 = out;
                                        keyValueBackupQueue = keyValueBackupQueue2;
                                        try {
                                            if (this.mKeyValue) {
                                                try {
                                                    while (r1.hasNext()) {
                                                        Slog.i(BackupManagerService.TAG, "--- Performing key-value backup for package " + keyValuePackage.packageName + " ---");
                                                        KeyValueAdbBackupEngine kvBackupEngine2 = new KeyValueAdbBackupEngine(out2, keyValuePackage, this.mUserBackupManagerService, this.mUserBackupManagerService.getPackageManager(), this.mUserBackupManagerService.getBaseStateDir(), this.mUserBackupManagerService.getDataDir());
                                                        sendOnBackupPackage(keyValuePackage.packageName);
                                                        kvBackupEngine2.backupOnePackage();
                                                    }
                                                } catch (RemoteException e25) {
                                                    out5 = out2;
                                                    z2 = true;
                                                    Slog.e(BackupManagerService.TAG, "App died during full backup");
                                                    if (out5 != null) {
                                                        out5.flush();
                                                        out5.close();
                                                    }
                                                    this.mOutputFile.close();
                                                    synchronized (this.mLatch) {
                                                        this.mLatch.set(z2);
                                                        this.mLatch.notifyAll();
                                                        sendEndBackup();
                                                        obbConnection.tearDown();
                                                        Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                                        this.mUserBackupManagerService.getWakelock().release();
                                                    }
                                                } catch (Exception e26) {
                                                    e = e26;
                                                    out5 = out2;
                                                    z4 = true;
                                                } catch (Throwable th9) {
                                                    th = th9;
                                                    out5 = out2;
                                                    z = true;
                                                    if (out5 != null) {
                                                        out5.flush();
                                                        out5.close();
                                                    }
                                                    this.mOutputFile.close();
                                                    synchronized (this.mLatch) {
                                                        this.mLatch.set(z);
                                                        this.mLatch.notifyAll();
                                                        sendEndBackup();
                                                        obbConnection.tearDown();
                                                        Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                                        this.mUserBackupManagerService.getWakelock().release();
                                                        throw th;
                                                    }
                                                }
                                            }
                                            finalizeBackup(out2);
                                            if (out2 != null) {
                                                try {
                                                    out2.flush();
                                                    out2.close();
                                                } catch (IOException e27) {
                                                    Slog.e(BackupManagerService.TAG, "IO error closing adb backup file: " + e27.getMessage());
                                                }
                                            }
                                            this.mOutputFile.close();
                                            synchronized (this.mLatch) {
                                                this.mLatch.set(true);
                                                this.mLatch.notifyAll();
                                            }
                                            sendEndBackup();
                                            obbConnection.tearDown();
                                            Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                            this.mUserBackupManagerService.getWakelock().release();
                                            return;
                                        } catch (RemoteException e28) {
                                            z2 = true;
                                            out5 = out2;
                                        } catch (Exception e29) {
                                            e = e29;
                                            z4 = true;
                                            out5 = out2;
                                        } catch (Throwable th10) {
                                            z = true;
                                            th = th10;
                                            out5 = out2;
                                        }
                                    } catch (RemoteException e30) {
                                        out5 = out;
                                        z2 = true;
                                        Slog.e(BackupManagerService.TAG, "App died during full backup");
                                        if (out5 != null) {
                                            out5.flush();
                                            out5.close();
                                        }
                                        this.mOutputFile.close();
                                        synchronized (this.mLatch) {
                                            this.mLatch.set(z2);
                                            this.mLatch.notifyAll();
                                            sendEndBackup();
                                            obbConnection.tearDown();
                                            Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                            this.mUserBackupManagerService.getWakelock().release();
                                        }
                                    } catch (Exception e31) {
                                        e = e31;
                                        out5 = out;
                                        z4 = true;
                                    } catch (Throwable th11) {
                                        th = th11;
                                        out5 = out;
                                        z = true;
                                        if (out5 != null) {
                                            out5.flush();
                                            out5.close();
                                        }
                                        this.mOutputFile.close();
                                        synchronized (this.mLatch) {
                                            this.mLatch.set(z);
                                            this.mLatch.notifyAll();
                                            sendEndBackup();
                                            obbConnection.tearDown();
                                            Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                            this.mUserBackupManagerService.getWakelock().release();
                                            throw th;
                                        }
                                    }
                                } catch (RemoteException e32) {
                                    z2 = true;
                                    out5 = out;
                                } catch (Exception e33) {
                                    e = e33;
                                    z4 = true;
                                    out5 = out;
                                } catch (Throwable th12) {
                                    z = true;
                                    th = th12;
                                    out5 = out;
                                }
                            } catch (Exception e34) {
                                e = e34;
                                z4 = true;
                            }
                        } catch (RemoteException e35) {
                            z2 = true;
                            Slog.e(BackupManagerService.TAG, "App died during full backup");
                            if (out5 != null) {
                                out5.flush();
                                out5.close();
                            }
                            this.mOutputFile.close();
                            synchronized (this.mLatch) {
                                this.mLatch.set(z2);
                                this.mLatch.notifyAll();
                                sendEndBackup();
                                obbConnection.tearDown();
                                Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                this.mUserBackupManagerService.getWakelock().release();
                            }
                        } catch (Throwable th13) {
                            th = th13;
                            z = true;
                            if (out5 != null) {
                                out5.flush();
                                out5.close();
                            }
                            this.mOutputFile.close();
                            synchronized (this.mLatch) {
                                this.mLatch.set(z);
                                this.mLatch.notifyAll();
                                sendEndBackup();
                                obbConnection.tearDown();
                                Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                this.mUserBackupManagerService.getWakelock().release();
                                throw th;
                            }
                        }
                        Slog.e(BackupManagerService.TAG, "Internal exception during full backup", e);
                        if (out5 != null) {
                            try {
                                out5.flush();
                                out5.close();
                            } catch (IOException e36) {
                                Slog.e(BackupManagerService.TAG, "IO error closing adb backup file: " + e36.getMessage());
                            }
                        }
                        this.mOutputFile.close();
                        synchronized (this.mLatch) {
                            this.mLatch.set(z4);
                            this.mLatch.notifyAll();
                        }
                    } else {
                        z3 = false;
                        encrypting = z3;
                        if (!this.mUserBackupManagerService.deviceIsEncrypted()) {
                        }
                        finalOutput = ofstream;
                        if (!this.mUserBackupManagerService.backupPasswordMatches(this.mCurrentPassword)) {
                            Slog.w(BackupManagerService.TAG, "Backup password mismatch; aborting");
                            if (0 != 0) {
                                out5.flush();
                                out5.close();
                            }
                            this.mOutputFile.close();
                            synchronized (this.mLatch) {
                                this.mLatch.set(true);
                                this.mLatch.notifyAll();
                                sendEndBackup();
                                obbConnection.tearDown();
                                Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                this.mUserBackupManagerService.getWakelock().release();
                                return;
                            }
                        }
                        headerbuf = new StringBuilder(1024);
                        headerbuf.append(UserBackupManagerService.BACKUP_FILE_HEADER_MAGIC);
                        headerbuf.append(5);
                        if (this.mCompress) {
                            str = "\n1\n";
                        } else {
                            str = "\n0\n";
                        }
                        headerbuf.append(str);
                        if (encrypting) {
                            finalOutput = emitAesBackupHeader(headerbuf, finalOutput);
                        } else {
                            headerbuf.append("none\n");
                        }
                        byte[] header2 = headerbuf.toString().getBytes("UTF-8");
                        ofstream.write(header2);
                        if (this.mCompress) {
                            Deflater deflater2 = new Deflater(9);
                            finalOutput2 = new DeflaterOutputStream(finalOutput, deflater2, true);
                        } else {
                            finalOutput2 = finalOutput;
                        }
                        out = finalOutput2;
                        if (this.mIncludeShared) {
                            N = backupQueue.size();
                            i = 0;
                            while (i < N) {
                                pkg = backupQueue.get(i);
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("--- Performing full backup for package ");
                                sb3.append(pkg.packageName);
                                sb3.append(" ---");
                                Slog.i(BackupManagerService.TAG, sb3.toString());
                                isSharedStorage = pkg.packageName.equals(UserBackupManagerService.SHARED_BACKUP_AGENT_PACKAGE);
                                ArrayList<PackageInfo> keyValueBackupQueue5 = keyValueBackupQueue2;
                                int i5 = i;
                                out3 = out;
                                StringBuilder headerbuf4 = headerbuf;
                                FileOutputStream ofstream4 = ofstream;
                                ArrayList<PackageInfo> backupQueue4 = backupQueue;
                                PackageManager pm4 = pm;
                                FullBackupEngine mBackupEngine3 = new FullBackupEngine(this.mUserBackupManagerService, out, null, pkg, this.mIncludeApks, this, JobStatus.NO_LATEST_RUNTIME, this.mCurrentOpToken, 0);
                                if (isSharedStorage) {
                                    str2 = "Shared storage";
                                    pkg2 = pkg;
                                } else {
                                    pkg2 = pkg;
                                    str2 = pkg2.packageName;
                                }
                                sendOnBackupPackage(str2);
                                this.mCurrentTarget = pkg2;
                                mBackupEngine3.backupOnePackage();
                                if (this.mIncludeObbs) {
                                    out4 = out3;
                                } else {
                                    out4 = out3;
                                }
                                out = out4;
                                pm = pm4;
                                headerbuf = headerbuf4;
                                ofstream = ofstream4;
                                keyValueBackupQueue2 = keyValueBackupQueue5;
                                backupQueue = backupQueue4;
                                z4 = true;
                                i = i5 + 1;
                            }
                            out2 = out;
                            keyValueBackupQueue = keyValueBackupQueue2;
                            if (this.mKeyValue) {
                                while (r1.hasNext()) {
                                    Slog.i(BackupManagerService.TAG, "--- Performing key-value backup for package " + keyValuePackage.packageName + " ---");
                                    KeyValueAdbBackupEngine kvBackupEngine3 = new KeyValueAdbBackupEngine(out2, keyValuePackage, this.mUserBackupManagerService, this.mUserBackupManagerService.getPackageManager(), this.mUserBackupManagerService.getBaseStateDir(), this.mUserBackupManagerService.getDataDir());
                                    sendOnBackupPackage(keyValuePackage.packageName);
                                    kvBackupEngine3.backupOnePackage();
                                }
                            }
                            finalizeBackup(out2);
                            if (out2 != null) {
                                out2.flush();
                                out2.close();
                            }
                            this.mOutputFile.close();
                            synchronized (this.mLatch) {
                                this.mLatch.set(true);
                                this.mLatch.notifyAll();
                                sendEndBackup();
                                obbConnection.tearDown();
                                Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                                this.mUserBackupManagerService.getWakelock().release();
                                return;
                            }
                        }
                        backupQueue.add(this.mUserBackupManagerService.getPackageManager().getPackageInfo(UserBackupManagerService.SHARED_BACKUP_AGENT_PACKAGE, 0));
                        N = backupQueue.size();
                        i = 0;
                        while (i < N) {
                            pkg = backupQueue.get(i);
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("--- Performing full backup for package ");
                            sb4.append(pkg.packageName);
                            sb4.append(" ---");
                            Slog.i(BackupManagerService.TAG, sb4.toString());
                            isSharedStorage = pkg.packageName.equals(UserBackupManagerService.SHARED_BACKUP_AGENT_PACKAGE);
                            ArrayList<PackageInfo> keyValueBackupQueue6 = keyValueBackupQueue2;
                            int i6 = i;
                            out3 = out;
                            StringBuilder headerbuf5 = headerbuf;
                            FileOutputStream ofstream5 = ofstream;
                            ArrayList<PackageInfo> backupQueue5 = backupQueue;
                            PackageManager pm5 = pm;
                            FullBackupEngine mBackupEngine4 = new FullBackupEngine(this.mUserBackupManagerService, out, null, pkg, this.mIncludeApks, this, JobStatus.NO_LATEST_RUNTIME, this.mCurrentOpToken, 0);
                            if (isSharedStorage) {
                                str2 = "Shared storage";
                                pkg2 = pkg;
                            } else {
                                pkg2 = pkg;
                                str2 = pkg2.packageName;
                            }
                            sendOnBackupPackage(str2);
                            this.mCurrentTarget = pkg2;
                            mBackupEngine4.backupOnePackage();
                            if (this.mIncludeObbs) {
                                out4 = out3;
                            } else {
                                out4 = out3;
                            }
                            out = out4;
                            pm = pm5;
                            headerbuf = headerbuf5;
                            ofstream = ofstream5;
                            keyValueBackupQueue2 = keyValueBackupQueue6;
                            backupQueue = backupQueue5;
                            z4 = true;
                            i = i6 + 1;
                        }
                        out2 = out;
                        keyValueBackupQueue = keyValueBackupQueue2;
                        if (this.mKeyValue) {
                            while (r1.hasNext()) {
                                Slog.i(BackupManagerService.TAG, "--- Performing key-value backup for package " + keyValuePackage.packageName + " ---");
                                KeyValueAdbBackupEngine kvBackupEngine4 = new KeyValueAdbBackupEngine(out2, keyValuePackage, this.mUserBackupManagerService, this.mUserBackupManagerService.getPackageManager(), this.mUserBackupManagerService.getBaseStateDir(), this.mUserBackupManagerService.getDataDir());
                                sendOnBackupPackage(keyValuePackage.packageName);
                                kvBackupEngine4.backupOnePackage();
                            }
                        }
                        finalizeBackup(out2);
                        if (out2 != null) {
                            out2.flush();
                            out2.close();
                        }
                        this.mOutputFile.close();
                        synchronized (this.mLatch) {
                            this.mLatch.set(true);
                            this.mLatch.notifyAll();
                            sendEndBackup();
                            obbConnection.tearDown();
                            Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
                            this.mUserBackupManagerService.getWakelock().release();
                            return;
                        }
                        Slog.e(BackupManagerService.TAG, "Internal exception during full backup", e);
                        if (out5 != null) {
                            out5.flush();
                            out5.close();
                        }
                        this.mOutputFile.close();
                        synchronized (this.mLatch) {
                            this.mLatch.set(z4);
                            this.mLatch.notifyAll();
                        }
                    }
                } catch (Throwable th14) {
                    th = th14;
                }
            } catch (Exception e37) {
                e = e37;
                z4 = true;
            }
        } catch (RemoteException e38) {
            z2 = true;
        } catch (Throwable th15) {
            z = true;
            th = th15;
        }
        sendEndBackup();
        obbConnection.tearDown();
        Slog.d(BackupManagerService.TAG, "Full backup pass complete.");
        this.mUserBackupManagerService.getWakelock().release();
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void execute() {
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void operationComplete(long result) {
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void handleCancel(boolean cancelAll) {
        PackageInfo target = this.mCurrentTarget;
        Slog.w(BackupManagerService.TAG, "adb backup cancel of " + target);
        if (target != null) {
            this.mUserBackupManagerService.tearDownAgentAndKill(this.mCurrentTarget.applicationInfo);
        }
        this.mUserBackupManagerService.removeOperation(this.mCurrentOpToken);
    }
}
