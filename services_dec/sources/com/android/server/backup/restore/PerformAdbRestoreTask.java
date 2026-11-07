package com.android.server.backup.restore;

import android.app.backup.IFullBackupRestoreObserver;
import android.os.ParcelFileDescriptor;
import android.util.Slog;
import com.android.server.backup.BackupManagerService;
import com.android.server.backup.BackupPasswordManager;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.fullbackup.FullBackupObbConnection;
import com.android.server.backup.utils.FullBackupRestoreObserverUtils;
import com.android.server.backup.utils.PasswordUtils;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.InflaterInputStream;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class PerformAdbRestoreTask implements Runnable {
    private final UserBackupManagerService mBackupManagerService;
    private final String mCurrentPassword;
    private final String mDecryptPassword;
    private final ParcelFileDescriptor mInputFile;
    private final AtomicBoolean mLatchObject;
    private final FullBackupObbConnection mObbConnection;
    private IFullBackupRestoreObserver mObserver;

    public PerformAdbRestoreTask(UserBackupManagerService backupManagerService, ParcelFileDescriptor fd, String curPassword, String decryptPassword, IFullBackupRestoreObserver observer, AtomicBoolean latch) {
        this.mBackupManagerService = backupManagerService;
        this.mInputFile = fd;
        this.mCurrentPassword = curPassword;
        this.mDecryptPassword = decryptPassword;
        this.mObserver = observer;
        this.mLatchObject = latch;
        this.mObbConnection = new FullBackupObbConnection(backupManagerService);
    }

    /* JADX WARN: Code duplicated, block: B:85:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x015d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public void run() {
        Slog.i(BackupManagerService.TAG, "--- Performing full-dataset restore ---");
        this.mObbConnection.establish();
        this.mObserver = FullBackupRestoreObserverUtils.sendStartRestore(this.mObserver);
        FileInputStream rawInStream = null;
        try {
            try {
                if (!this.mBackupManagerService.backupPasswordMatches(this.mCurrentPassword)) {
                    Slog.w(BackupManagerService.TAG, "Backup password mismatch; aborting");
                    if (0 != 0) {
                        try {
                            rawInStream.close();
                        } catch (IOException e) {
                            Slog.w(BackupManagerService.TAG, "Close of restore data pipe threw", e);
                        }
                    }
                    this.mInputFile.close();
                    synchronized (this.mLatchObject) {
                        this.mLatchObject.set(true);
                        this.mLatchObject.notifyAll();
                    }
                    this.mObbConnection.tearDown();
                    this.mObserver = FullBackupRestoreObserverUtils.sendEndRestore(this.mObserver);
                    Slog.d(BackupManagerService.TAG, "Full restore pass complete.");
                    this.mBackupManagerService.getWakelock().release();
                    return;
                }
                FileInputStream rawInStream2 = new FileInputStream(this.mInputFile.getFileDescriptor());
                InputStream tarInputStream = parseBackupFileHeaderAndReturnTarStream(rawInStream2, this.mDecryptPassword);
                if (tarInputStream == null) {
                    try {
                        rawInStream2.close();
                        this.mInputFile.close();
                    } catch (IOException e2) {
                        Slog.w(BackupManagerService.TAG, "Close of restore data pipe threw", e2);
                    }
                    synchronized (this.mLatchObject) {
                        this.mLatchObject.set(true);
                        this.mLatchObject.notifyAll();
                    }
                    this.mObbConnection.tearDown();
                    this.mObserver = FullBackupRestoreObserverUtils.sendEndRestore(this.mObserver);
                    Slog.d(BackupManagerService.TAG, "Full restore pass complete.");
                    this.mBackupManagerService.getWakelock().release();
                    return;
                }
                FullRestoreEngine mEngine = new FullRestoreEngine(this.mBackupManagerService, null, this.mObserver, null, null, true, 0, true);
                FullRestoreEngineThread mEngineThread = new FullRestoreEngineThread(mEngine, tarInputStream);
                mEngineThread.run();
                try {
                    rawInStream2.close();
                    this.mInputFile.close();
                } catch (IOException e3) {
                    Slog.w(BackupManagerService.TAG, "Close of restore data pipe threw", e3);
                }
                synchronized (this.mLatchObject) {
                    this.mLatchObject.set(true);
                    this.mLatchObject.notifyAll();
                }
                this.mObbConnection.tearDown();
                this.mObserver = FullBackupRestoreObserverUtils.sendEndRestore(this.mObserver);
                Slog.d(BackupManagerService.TAG, "Full restore pass complete.");
                this.mBackupManagerService.getWakelock().release();
            } catch (Exception e4) {
                Slog.e(BackupManagerService.TAG, "Unable to read restore input");
                if (0 != 0) {
                    try {
                        rawInStream.close();
                    } catch (IOException e5) {
                        Slog.w(BackupManagerService.TAG, "Close of restore data pipe threw", e5);
                        synchronized (this.mLatchObject) {
                            this.mLatchObject.set(true);
                            this.mLatchObject.notifyAll();
                            this.mObbConnection.tearDown();
                            this.mObserver = FullBackupRestoreObserverUtils.sendEndRestore(this.mObserver);
                            Slog.d(BackupManagerService.TAG, "Full restore pass complete.");
                            this.mBackupManagerService.getWakelock().release();
                        }
                    }
                }
                this.mInputFile.close();
                synchronized (this.mLatchObject) {
                    this.mLatchObject.set(true);
                    this.mLatchObject.notifyAll();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    rawInStream.close();
                } catch (IOException e6) {
                    Slog.w(BackupManagerService.TAG, "Close of restore data pipe threw", e6);
                    synchronized (this.mLatchObject) {
                        this.mLatchObject.set(true);
                        this.mLatchObject.notifyAll();
                        this.mObbConnection.tearDown();
                        this.mObserver = FullBackupRestoreObserverUtils.sendEndRestore(this.mObserver);
                        Slog.d(BackupManagerService.TAG, "Full restore pass complete.");
                        this.mBackupManagerService.getWakelock().release();
                        throw th;
                    }
                }
            }
            this.mInputFile.close();
            synchronized (this.mLatchObject) {
                this.mLatchObject.set(true);
                this.mLatchObject.notifyAll();
                this.mObbConnection.tearDown();
                this.mObserver = FullBackupRestoreObserverUtils.sendEndRestore(this.mObserver);
                Slog.d(BackupManagerService.TAG, "Full restore pass complete.");
                this.mBackupManagerService.getWakelock().release();
                throw th;
            }
        }
    }

    private static void readFullyOrThrow(InputStream in, byte[] buffer) throws IOException {
        int offset = 0;
        while (offset < buffer.length) {
            int bytesRead = in.read(buffer, offset, buffer.length - offset);
            if (bytesRead <= 0) {
                throw new IOException("Couldn't fully read data");
            }
            offset += bytesRead;
        }
    }

    public static InputStream parseBackupFileHeaderAndReturnTarStream(InputStream rawInputStream, String decryptPassword) throws IOException {
        boolean compressed = false;
        InputStream preCompressStream = rawInputStream;
        boolean okay = false;
        int headerLen = UserBackupManagerService.BACKUP_FILE_HEADER_MAGIC.length();
        byte[] streamHeader = new byte[headerLen];
        readFullyOrThrow(rawInputStream, streamHeader);
        byte[] magicBytes = UserBackupManagerService.BACKUP_FILE_HEADER_MAGIC.getBytes("UTF-8");
        if (Arrays.equals(magicBytes, streamHeader)) {
            String s = readHeaderLine(rawInputStream);
            int archiveVersion = Integer.parseInt(s);
            if (archiveVersion <= 5) {
                boolean pbkdf2Fallback = archiveVersion == 1;
                compressed = Integer.parseInt(readHeaderLine(rawInputStream)) != 0;
                String s2 = readHeaderLine(rawInputStream);
                if (s2.equals("none")) {
                    okay = true;
                } else if (decryptPassword != null && decryptPassword.length() > 0) {
                    preCompressStream = decodeAesHeaderAndInitialize(decryptPassword, s2, pbkdf2Fallback, rawInputStream);
                    if (preCompressStream != null) {
                        okay = true;
                    }
                } else {
                    Slog.w(BackupManagerService.TAG, "Archive is encrypted but no password given");
                }
            } else {
                Slog.w(BackupManagerService.TAG, "Wrong header version: " + s);
            }
        } else {
            Slog.w(BackupManagerService.TAG, "Didn't read the right header magic");
        }
        if (okay) {
            return compressed ? new InflaterInputStream(preCompressStream) : preCompressStream;
        }
        Slog.w(BackupManagerService.TAG, "Invalid restore data; aborting.");
        return null;
    }

    private static String readHeaderLine(InputStream in) throws IOException {
        StringBuilder buffer = new StringBuilder(80);
        while (true) {
            int c = in.read();
            if (c < 0 || c == 10) {
                break;
            }
            buffer.append((char) c);
        }
        return buffer.toString();
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:77:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:82:0x010c  */
    /* JADX WARN: Code duplicated, block: B:87:0x011b  */
    /* JADX WARN: Code duplicated, block: B:92:0x012a  */
    /* JADX WARN: Code duplicated, block: B:97:0x0137  */
    private static InputStream attemptMasterKeyDecryption(String decryptPassword, String algorithm, byte[] userSalt, byte[] ckSalt, int rounds, String userIvHex, String masterKeyBlobHex, InputStream rawInStream, boolean doLog) {
        InputStream result;
        try {
            Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
            try {
                SecretKey userKey = PasswordUtils.buildPasswordKey(algorithm, decryptPassword, userSalt, rounds);
                byte[] IV = PasswordUtils.hexToByteArray(userIvHex);
                IvParameterSpec ivSpec = new IvParameterSpec(IV);
                c.init(2, new SecretKeySpec(userKey.getEncoded(), "AES"), ivSpec);
                byte[] mkCipher = PasswordUtils.hexToByteArray(masterKeyBlobHex);
                byte[] mkBlob = c.doFinal(mkCipher);
                int offset = 0 + 1;
                int len = mkBlob[0];
                result = null;
                try {
                    byte[] IV2 = Arrays.copyOfRange(mkBlob, offset, offset + len);
                    int offset2 = offset + len;
                    int offset3 = offset2 + 1;
                    int len2 = mkBlob[offset2];
                    byte[] mk = Arrays.copyOfRange(mkBlob, offset3, offset3 + len2);
                    int offset4 = offset3 + len2;
                    int offset5 = offset4 + 1;
                    byte[] mkChecksum = Arrays.copyOfRange(mkBlob, offset5, offset5 + mkBlob[offset4]);
                    try {
                        byte[] calculatedCk = PasswordUtils.makeKeyChecksum(algorithm, mk, ckSalt, rounds);
                        if (!Arrays.equals(calculatedCk, mkChecksum)) {
                            if (doLog) {
                                Slog.w(BackupManagerService.TAG, "Incorrect password");
                            }
                            return null;
                        }
                        try {
                            IvParameterSpec ivSpec2 = new IvParameterSpec(IV2);
                            c.init(2, new SecretKeySpec(mk, "AES"), ivSpec2);
                            InputStream result2 = new CipherInputStream(rawInStream, c);
                            return result2;
                        } catch (InvalidAlgorithmParameterException e) {
                            e = e;
                            if (doLog) {
                                Slog.e(BackupManagerService.TAG, "Needed parameter spec unavailable!", e);
                            }
                            return result;
                        } catch (InvalidKeyException e2) {
                            if (doLog) {
                                Slog.w(BackupManagerService.TAG, "Illegal password; aborting");
                            }
                            return result;
                        } catch (NoSuchAlgorithmException e3) {
                            if (doLog) {
                                Slog.e(BackupManagerService.TAG, "Needed decryption algorithm unavailable!");
                            }
                            return result;
                        } catch (BadPaddingException e4) {
                            if (doLog) {
                                Slog.w(BackupManagerService.TAG, "Incorrect password");
                            }
                            return result;
                        } catch (IllegalBlockSizeException e5) {
                            if (doLog) {
                                Slog.w(BackupManagerService.TAG, "Invalid block size in master key");
                            }
                            return result;
                        } catch (NoSuchPaddingException e6) {
                            if (doLog) {
                                Slog.e(BackupManagerService.TAG, "Needed padding mechanism unavailable!");
                            }
                            return result;
                        }
                    } catch (InvalidAlgorithmParameterException e7) {
                        e = e7;
                    } catch (InvalidKeyException e8) {
                    } catch (NoSuchAlgorithmException e9) {
                    } catch (BadPaddingException e10) {
                    } catch (IllegalBlockSizeException e11) {
                    } catch (NoSuchPaddingException e12) {
                    }
                } catch (InvalidAlgorithmParameterException e13) {
                    e = e13;
                } catch (InvalidKeyException e14) {
                } catch (NoSuchAlgorithmException e15) {
                } catch (BadPaddingException e16) {
                } catch (IllegalBlockSizeException e17) {
                } catch (NoSuchPaddingException e18) {
                }
            } catch (InvalidAlgorithmParameterException e19) {
                e = e19;
                result = null;
                if (doLog) {
                    Slog.e(BackupManagerService.TAG, "Needed parameter spec unavailable!", e);
                }
                return result;
            } catch (InvalidKeyException e20) {
                result = null;
                if (doLog) {
                    Slog.w(BackupManagerService.TAG, "Illegal password; aborting");
                }
                return result;
            } catch (NoSuchAlgorithmException e21) {
                result = null;
                if (doLog) {
                    Slog.e(BackupManagerService.TAG, "Needed decryption algorithm unavailable!");
                }
                return result;
            } catch (BadPaddingException e22) {
                result = null;
                if (doLog) {
                    Slog.w(BackupManagerService.TAG, "Incorrect password");
                }
                return result;
            } catch (IllegalBlockSizeException e23) {
                result = null;
                if (doLog) {
                    Slog.w(BackupManagerService.TAG, "Invalid block size in master key");
                }
                return result;
            } catch (NoSuchPaddingException e24) {
                result = null;
                if (doLog) {
                    Slog.e(BackupManagerService.TAG, "Needed padding mechanism unavailable!");
                }
                return result;
            }
        } catch (InvalidAlgorithmParameterException e25) {
            e = e25;
        } catch (InvalidKeyException e26) {
        } catch (NoSuchAlgorithmException e27) {
        } catch (BadPaddingException e28) {
        } catch (IllegalBlockSizeException e29) {
        } catch (NoSuchPaddingException e30) {
        }
    }

    private static InputStream decodeAesHeaderAndInitialize(String decryptPassword, String encryptionName, boolean pbkdf2Fallback, InputStream rawInStream) {
        InputStream result = null;
        try {
            if (encryptionName.equals(PasswordUtils.ENCRYPTION_ALGORITHM_NAME)) {
                String userSaltHex = readHeaderLine(rawInStream);
                byte[] userSalt = PasswordUtils.hexToByteArray(userSaltHex);
                String ckSaltHex = readHeaderLine(rawInStream);
                byte[] ckSalt = PasswordUtils.hexToByteArray(ckSaltHex);
                int rounds = Integer.parseInt(readHeaderLine(rawInStream));
                String userIvHex = readHeaderLine(rawInStream);
                String masterKeyBlobHex = readHeaderLine(rawInStream);
                result = attemptMasterKeyDecryption(decryptPassword, BackupPasswordManager.PBKDF_CURRENT, userSalt, ckSalt, rounds, userIvHex, masterKeyBlobHex, rawInStream, false);
                if (result == null && pbkdf2Fallback) {
                    result = attemptMasterKeyDecryption(decryptPassword, BackupPasswordManager.PBKDF_FALLBACK, userSalt, ckSalt, rounds, userIvHex, masterKeyBlobHex, rawInStream, true);
                }
            } else {
                Slog.w(BackupManagerService.TAG, "Unsupported encryption method: " + encryptionName);
            }
        } catch (IOException e) {
            Slog.w(BackupManagerService.TAG, "Can't read input header");
        } catch (NumberFormatException e2) {
            Slog.w(BackupManagerService.TAG, "Can't parse restore data header");
        }
        return result;
    }
}
