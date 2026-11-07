package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.service.persistentdata.IPersistentDataBlockService;
import android.util.Slog;
import com.android.internal.util.Preconditions;
import com.android.server.job.controllers.JobStatus;
import com.android.server.slice.SliceClientPermissions;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class PersistentDataBlockService extends SystemService {
    public static final int DIGEST_SIZE_BYTES = 32;
    private static final String FLASH_LOCK_LOCKED = "1";
    private static final String FLASH_LOCK_PROP = "ro.boot.flash.locked";
    private static final String FLASH_LOCK_UNLOCKED = "0";
    private static final int FRP_CREDENTIAL_RESERVED_SIZE = 1000;
    private static final int HEADER_SIZE = 8;
    private static final int MAX_DATA_BLOCK_SIZE = 102400;
    private static final int MAX_FRP_CREDENTIAL_HANDLE_SIZE = 996;
    private static final int MAX_TEST_MODE_DATA_SIZE = 9996;
    private static final String OEM_UNLOCK_PROP = "sys.oem_unlock_allowed";
    private static final int PARTITION_TYPE_MARKER = 428873843;
    private static final String PERSISTENT_DATA_BLOCK_PROP = "ro.frp.pst";
    private static final String TAG = PersistentDataBlockService.class.getSimpleName();
    private static final int TEST_MODE_RESERVED_SIZE = 10000;
    private int mAllowedUid;
    private long mBlockDeviceSize;
    private final Context mContext;
    private final String mDataBlockFile;
    private final CountDownLatch mInitDoneSignal;
    private PersistentDataBlockManagerInternal mInternalService;
    private boolean mIsWritable;
    private final Object mLock;
    private final IBinder mService;

    private native long nativeGetBlockDeviceSize(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public native int nativeWipe(String str);

    public PersistentDataBlockService(Context context) {
        super(context);
        this.mLock = new Object();
        this.mInitDoneSignal = new CountDownLatch(1);
        this.mAllowedUid = -1;
        this.mIsWritable = true;
        this.mService = new IPersistentDataBlockService.Stub() { // from class: com.android.server.PersistentDataBlockService.1
            public int write(byte[] data) throws RemoteException {
                PersistentDataBlockService.this.enforceUid(Binder.getCallingUid());
                long maxBlockSize = PersistentDataBlockService.this.doGetMaximumDataBlockSize();
                if (data.length > maxBlockSize) {
                    return (int) (-maxBlockSize);
                }
                try {
                    DataOutputStream outputStream = new DataOutputStream(new FileOutputStream(new File(PersistentDataBlockService.this.mDataBlockFile)));
                    ByteBuffer headerAndData = ByteBuffer.allocate(data.length + 8);
                    headerAndData.putInt(PersistentDataBlockService.PARTITION_TYPE_MARKER);
                    headerAndData.putInt(data.length);
                    headerAndData.put(data);
                    synchronized (PersistentDataBlockService.this.mLock) {
                        if (!PersistentDataBlockService.this.mIsWritable) {
                            IoUtils.closeQuietly(outputStream);
                            return -1;
                        }
                        try {
                            try {
                                byte[] checksum = new byte[32];
                                outputStream.write(checksum, 0, 32);
                                outputStream.write(headerAndData.array());
                                outputStream.flush();
                                IoUtils.closeQuietly(outputStream);
                                if (!PersistentDataBlockService.this.computeAndWriteDigestLocked()) {
                                    return -1;
                                }
                                return data.length;
                            } catch (Throwable th) {
                                IoUtils.closeQuietly(outputStream);
                                throw th;
                            }
                        } catch (IOException e) {
                            Slog.e(PersistentDataBlockService.TAG, "failed writing to the persistent data block", e);
                            IoUtils.closeQuietly(outputStream);
                            return -1;
                        }
                    }
                } catch (FileNotFoundException e2) {
                    Slog.e(PersistentDataBlockService.TAG, "partition not available?", e2);
                    return -1;
                }
            }

            public byte[] read() {
                PersistentDataBlockService.this.enforceUid(Binder.getCallingUid());
                if (!PersistentDataBlockService.this.enforceChecksumValidity()) {
                    return new byte[0];
                }
                try {
                    DataInputStream inputStream = new DataInputStream(new FileInputStream(new File(PersistentDataBlockService.this.mDataBlockFile)));
                    try {
                        try {
                            synchronized (PersistentDataBlockService.this.mLock) {
                                int totalDataSize = PersistentDataBlockService.this.getTotalDataSizeLocked(inputStream);
                                if (totalDataSize == 0) {
                                    byte[] bArr = new byte[0];
                                    try {
                                        inputStream.close();
                                    } catch (IOException e) {
                                        Slog.e(PersistentDataBlockService.TAG, "failed to close OutputStream");
                                    }
                                    return bArr;
                                }
                                byte[] data = new byte[totalDataSize];
                                int read = inputStream.read(data, 0, totalDataSize);
                                if (read >= totalDataSize) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e2) {
                                        Slog.e(PersistentDataBlockService.TAG, "failed to close OutputStream");
                                    }
                                    return data;
                                }
                                Slog.e(PersistentDataBlockService.TAG, "failed to read entire data block. bytes read: " + read + SliceClientPermissions.SliceAuthority.DELIMITER + totalDataSize);
                                try {
                                    inputStream.close();
                                } catch (IOException e3) {
                                    Slog.e(PersistentDataBlockService.TAG, "failed to close OutputStream");
                                }
                                return null;
                            }
                        } catch (IOException e4) {
                            Slog.e(PersistentDataBlockService.TAG, "failed to read data", e4);
                            try {
                                inputStream.close();
                            } catch (IOException e5) {
                                Slog.e(PersistentDataBlockService.TAG, "failed to close OutputStream");
                            }
                            return null;
                        }
                    } catch (Throwable th) {
                        try {
                            inputStream.close();
                        } catch (IOException e6) {
                            Slog.e(PersistentDataBlockService.TAG, "failed to close OutputStream");
                        }
                        throw th;
                    }
                } catch (FileNotFoundException e7) {
                    Slog.e(PersistentDataBlockService.TAG, "partition not available?", e7);
                    return null;
                }
            }

            public void wipe() {
                PersistentDataBlockService.this.enforceOemUnlockWritePermission();
                synchronized (PersistentDataBlockService.this.mLock) {
                    int ret = PersistentDataBlockService.this.nativeWipe(PersistentDataBlockService.this.mDataBlockFile);
                    if (ret < 0) {
                        Slog.e(PersistentDataBlockService.TAG, "failed to wipe persistent partition");
                    } else {
                        PersistentDataBlockService.this.mIsWritable = false;
                        Slog.i(PersistentDataBlockService.TAG, "persistent partition now wiped and unwritable");
                    }
                }
            }

            public void setOemUnlockEnabled(boolean enabled) throws SecurityException {
                if (!ActivityManager.isUserAMonkey()) {
                    PersistentDataBlockService.this.enforceOemUnlockWritePermission();
                    PersistentDataBlockService.this.enforceIsAdmin();
                    if (enabled) {
                        PersistentDataBlockService.this.enforceUserRestriction("no_oem_unlock");
                        PersistentDataBlockService.this.enforceUserRestriction("no_factory_reset");
                    }
                    synchronized (PersistentDataBlockService.this.mLock) {
                        PersistentDataBlockService.this.doSetOemUnlockEnabledLocked(enabled);
                        PersistentDataBlockService.this.computeAndWriteDigestLocked();
                    }
                }
            }

            public boolean getOemUnlockEnabled() {
                PersistentDataBlockService.this.enforceOemUnlockReadPermission();
                return PersistentDataBlockService.this.doGetOemUnlockEnabled();
            }

            /* JADX WARN: Code duplicated, block: B:13:0x0030  */
            public int getFlashLockState() {
                byte b;
                PersistentDataBlockService.this.enforceOemUnlockReadPermission();
                String locked = SystemProperties.get(PersistentDataBlockService.FLASH_LOCK_PROP);
                int iHashCode = locked.hashCode();
                if (iHashCode != 48) {
                    if (iHashCode == 49 && locked.equals("1")) {
                        b = 0;
                    } else {
                        b = -1;
                    }
                } else if (locked.equals(PersistentDataBlockService.FLASH_LOCK_UNLOCKED)) {
                    b = 1;
                } else {
                    b = -1;
                }
                if (b != 0) {
                    return b != 1 ? -1 : 0;
                }
                return 1;
            }

            public int getDataBlockSize() {
                int totalDataSizeLocked;
                enforcePersistentDataBlockAccess();
                try {
                    DataInputStream inputStream = new DataInputStream(new FileInputStream(new File(PersistentDataBlockService.this.mDataBlockFile)));
                    try {
                        try {
                            synchronized (PersistentDataBlockService.this.mLock) {
                                totalDataSizeLocked = PersistentDataBlockService.this.getTotalDataSizeLocked(inputStream);
                            }
                            IoUtils.closeQuietly(inputStream);
                            return totalDataSizeLocked;
                        } catch (IOException e) {
                            Slog.e(PersistentDataBlockService.TAG, "error reading data block size");
                            IoUtils.closeQuietly(inputStream);
                            return 0;
                        }
                    } catch (Throwable th) {
                        IoUtils.closeQuietly(inputStream);
                        throw th;
                    }
                } catch (FileNotFoundException e2) {
                    Slog.e(PersistentDataBlockService.TAG, "partition not available");
                    return 0;
                }
            }

            private void enforcePersistentDataBlockAccess() {
                if (PersistentDataBlockService.this.mContext.checkCallingPermission("android.permission.ACCESS_PDB_STATE") != 0) {
                    PersistentDataBlockService.this.enforceUid(Binder.getCallingUid());
                }
            }

            public long getMaximumDataBlockSize() {
                PersistentDataBlockService.this.enforceUid(Binder.getCallingUid());
                return PersistentDataBlockService.this.doGetMaximumDataBlockSize();
            }

            public boolean hasFrpCredentialHandle() {
                enforcePersistentDataBlockAccess();
                try {
                    return PersistentDataBlockService.this.mInternalService.getFrpCredentialHandle() != null;
                } catch (IllegalStateException e) {
                    Slog.e(PersistentDataBlockService.TAG, "error reading frp handle", e);
                    throw new UnsupportedOperationException("cannot read frp credential");
                }
            }
        };
        this.mInternalService = new PersistentDataBlockManagerInternal() { // from class: com.android.server.PersistentDataBlockService.2
            @Override // com.android.server.PersistentDataBlockManagerInternal
            public void setFrpCredentialHandle(byte[] handle) {
                writeInternal(handle, PersistentDataBlockService.this.getFrpCredentialDataOffset(), PersistentDataBlockService.MAX_FRP_CREDENTIAL_HANDLE_SIZE);
            }

            @Override // com.android.server.PersistentDataBlockManagerInternal
            public byte[] getFrpCredentialHandle() {
                return readInternal(PersistentDataBlockService.this.getFrpCredentialDataOffset(), PersistentDataBlockService.MAX_FRP_CREDENTIAL_HANDLE_SIZE);
            }

            @Override // com.android.server.PersistentDataBlockManagerInternal
            public void setTestHarnessModeData(byte[] data) {
                writeInternal(data, PersistentDataBlockService.this.getTestHarnessModeDataOffset(), PersistentDataBlockService.MAX_TEST_MODE_DATA_SIZE);
            }

            @Override // com.android.server.PersistentDataBlockManagerInternal
            public byte[] getTestHarnessModeData() {
                byte[] data = readInternal(PersistentDataBlockService.this.getTestHarnessModeDataOffset(), PersistentDataBlockService.MAX_TEST_MODE_DATA_SIZE);
                if (data == null) {
                    return new byte[0];
                }
                return data;
            }

            @Override // com.android.server.PersistentDataBlockManagerInternal
            public void clearTestHarnessModeData() {
                int size = Math.min(PersistentDataBlockService.MAX_TEST_MODE_DATA_SIZE, getTestHarnessModeData().length) + 4;
                writeDataBuffer(PersistentDataBlockService.this.getTestHarnessModeDataOffset(), ByteBuffer.allocate(size));
            }

            @Override // com.android.server.PersistentDataBlockManagerInternal
            public int getAllowedUid() {
                return PersistentDataBlockService.this.mAllowedUid;
            }

            private void writeInternal(byte[] data, long offset, int dataLength) {
                boolean z = true;
                Preconditions.checkArgument(data == null || data.length > 0, "data must be null or non-empty");
                if (data != null && data.length > dataLength) {
                    z = false;
                }
                Preconditions.checkArgument(z, "data must not be longer than " + dataLength);
                ByteBuffer dataBuffer = ByteBuffer.allocate(dataLength + 4);
                dataBuffer.putInt(data != null ? data.length : 0);
                if (data != null) {
                    dataBuffer.put(data);
                }
                dataBuffer.flip();
                writeDataBuffer(offset, dataBuffer);
            }

            private void writeDataBuffer(long offset, ByteBuffer dataBuffer) {
                try {
                    FileOutputStream outputStream = new FileOutputStream(new File(PersistentDataBlockService.this.mDataBlockFile));
                    synchronized (PersistentDataBlockService.this.mLock) {
                        if (!PersistentDataBlockService.this.mIsWritable) {
                            IoUtils.closeQuietly(outputStream);
                            return;
                        }
                        try {
                            try {
                                FileChannel channel = outputStream.getChannel();
                                channel.position(offset);
                                channel.write(dataBuffer);
                                outputStream.flush();
                                IoUtils.closeQuietly(outputStream);
                                PersistentDataBlockService.this.computeAndWriteDigestLocked();
                            } catch (IOException e) {
                                Slog.e(PersistentDataBlockService.TAG, "unable to access persistent partition", e);
                                IoUtils.closeQuietly(outputStream);
                            }
                        } catch (Throwable th) {
                            IoUtils.closeQuietly(outputStream);
                            throw th;
                        }
                    }
                } catch (FileNotFoundException e2) {
                    Slog.e(PersistentDataBlockService.TAG, "partition not available", e2);
                }
            }

            private byte[] readInternal(long offset, int maxLength) {
                if (!PersistentDataBlockService.this.enforceChecksumValidity()) {
                    throw new IllegalStateException("invalid checksum");
                }
                try {
                    DataInputStream inputStream = new DataInputStream(new FileInputStream(new File(PersistentDataBlockService.this.mDataBlockFile)));
                    try {
                        try {
                            synchronized (PersistentDataBlockService.this.mLock) {
                                inputStream.skip(offset);
                                int length = inputStream.readInt();
                                if (length > 0 && length <= maxLength) {
                                    byte[] bytes = new byte[length];
                                    inputStream.readFully(bytes);
                                    IoUtils.closeQuietly(inputStream);
                                    return bytes;
                                }
                                IoUtils.closeQuietly(inputStream);
                                return null;
                            }
                        } catch (Throwable th) {
                            IoUtils.closeQuietly(inputStream);
                            throw th;
                        }
                    } catch (IOException e) {
                        throw new IllegalStateException("persistent partition not readable", e);
                    }
                } catch (FileNotFoundException e2) {
                    throw new IllegalStateException("persistent partition not available");
                }
            }

            @Override // com.android.server.PersistentDataBlockManagerInternal
            public void forceOemUnlockEnabled(boolean enabled) {
                synchronized (PersistentDataBlockService.this.mLock) {
                    PersistentDataBlockService.this.doSetOemUnlockEnabledLocked(enabled);
                    PersistentDataBlockService.this.computeAndWriteDigestLocked();
                }
            }
        };
        this.mContext = context;
        this.mDataBlockFile = SystemProperties.get(PERSISTENT_DATA_BLOCK_PROP);
        this.mBlockDeviceSize = -1L;
    }

    private int getAllowedUid(int userHandle) {
        String allowedPackage = this.mContext.getResources().getString(R.string.config_oem_enabled_satellite_sos_handover_app);
        PackageManager pm = this.mContext.getPackageManager();
        try {
            int allowedUid = pm.getPackageUidAsUser(allowedPackage, 1048576, userHandle);
            return allowedUid;
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(TAG, "not able to find package " + allowedPackage, e);
            return -1;
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.-$$Lambda$PersistentDataBlockService$EZl9OYaT2eNL7kfSr2nKUBjxidk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onStart$0$PersistentDataBlockService();
            }
        }, TAG + ".onStart");
    }

    public /* synthetic */ void lambda$onStart$0$PersistentDataBlockService() {
        this.mAllowedUid = getAllowedUid(0);
        enforceChecksumValidity();
        formatIfOemUnlockEnabled();
        publishBinderService("persistent_data_block", this.mService);
        this.mInitDoneSignal.countDown();
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 500) {
            try {
                if (!this.mInitDoneSignal.await(10L, TimeUnit.SECONDS)) {
                    throw new IllegalStateException("Service " + TAG + " init timeout");
                }
                LocalServices.addService(PersistentDataBlockManagerInternal.class, this.mInternalService);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException("Service " + TAG + " init interrupted", e);
            }
        }
        super.onBootPhase(phase);
    }

    private void formatIfOemUnlockEnabled() {
        boolean enabled = doGetOemUnlockEnabled();
        if (enabled) {
            synchronized (this.mLock) {
                formatPartitionLocked(true);
            }
        }
        SystemProperties.set(OEM_UNLOCK_PROP, enabled ? "1" : FLASH_LOCK_UNLOCKED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceOemUnlockReadPermission() {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.READ_OEM_UNLOCK_STATE") == -1 && this.mContext.checkCallingOrSelfPermission("android.permission.OEM_UNLOCK_STATE") == -1) {
            throw new SecurityException("Can't access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceOemUnlockWritePermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.OEM_UNLOCK_STATE", "Can't modify OEM unlock state");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceUid(int callingUid) {
        if (callingUid != this.mAllowedUid) {
            throw new SecurityException("uid " + callingUid + " not allowed to access PST");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceIsAdmin() {
        int userId = UserHandle.getCallingUserId();
        boolean isAdmin = UserManager.get(this.mContext).isUserAdmin(userId);
        if (!isAdmin) {
            throw new SecurityException("Only the Admin user is allowed to change OEM unlock state");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceUserRestriction(String userRestriction) {
        if (UserManager.get(this.mContext).hasUserRestriction(userRestriction)) {
            throw new SecurityException("OEM unlock is disallowed by user restriction: " + userRestriction);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTotalDataSizeLocked(DataInputStream inputStream) throws IOException {
        inputStream.skipBytes(32);
        int blockId = inputStream.readInt();
        if (blockId == PARTITION_TYPE_MARKER) {
            int totalDataSize = inputStream.readInt();
            return totalDataSize;
        }
        return 0;
    }

    private long getBlockDeviceSize() {
        synchronized (this.mLock) {
            if (this.mBlockDeviceSize == -1) {
                this.mBlockDeviceSize = nativeGetBlockDeviceSize(this.mDataBlockFile);
            }
        }
        return this.mBlockDeviceSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getFrpCredentialDataOffset() {
        return (getBlockDeviceSize() - 1) - 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getTestHarnessModeDataOffset() {
        return getFrpCredentialDataOffset() - JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean enforceChecksumValidity() {
        byte[] storedDigest = new byte[32];
        synchronized (this.mLock) {
            byte[] digest = computeDigestLocked(storedDigest);
            if (digest != null && Arrays.equals(storedDigest, digest)) {
                return true;
            }
            Slog.i(TAG, "Formatting FRP partition...");
            formatPartitionLocked(false);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean computeAndWriteDigestLocked() {
        byte[] digest = computeDigestLocked(null);
        if (digest == null) {
            return false;
        }
        try {
            DataOutputStream outputStream = new DataOutputStream(new FileOutputStream(new File(this.mDataBlockFile)));
            try {
                outputStream.write(digest, 0, 32);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                Slog.e(TAG, "failed to write block checksum", e);
                return false;
            } finally {
                IoUtils.closeQuietly(outputStream);
            }
        } catch (FileNotFoundException e2) {
            Slog.e(TAG, "partition not available?", e2);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0025 A[Catch: all -> 0x0045, IOException -> 0x0047, Merged into TryCatch #2 {all -> 0x0045, IOException -> 0x0047, blocks: (B:7:0x001e, B:9:0x0021, B:11:0x0028, B:12:0x0030, B:14:0x0038, B:10:0x0025, B:21:0x0048), top: B:32:0x001e }] */
    private byte[] computeDigestLocked(byte[] storedDigest) {
        try {
            DataInputStream inputStream = new DataInputStream(new FileInputStream(new File(this.mDataBlockFile)));
            try {
                MessageDigest md = MessageDigest.getInstance("SHA-256");
                if (storedDigest != null) {
                    try {
                        if (storedDigest.length == 32) {
                            inputStream.read(storedDigest);
                        } else {
                            inputStream.skipBytes(32);
                        }
                    } catch (IOException e) {
                        Slog.e(TAG, "failed to read partition", e);
                        return null;
                    } finally {
                        IoUtils.closeQuietly(inputStream);
                    }
                } else {
                    inputStream.skipBytes(32);
                }
                byte[] data = new byte[1024];
                md.update(data, 0, 32);
                while (true) {
                    int read = inputStream.read(data);
                    if (read == -1) {
                        return md.digest();
                    }
                    md.update(data, 0, read);
                }
            } catch (NoSuchAlgorithmException e2) {
                Slog.e(TAG, "SHA-256 not supported?", e2);
                IoUtils.closeQuietly(inputStream);
                return null;
            }
        } catch (FileNotFoundException e3) {
            Slog.e(TAG, "partition not available?", e3);
            return null;
        }
    }

    private void formatPartitionLocked(boolean setOemUnlockEnabled) {
        try {
            DataOutputStream outputStream = new DataOutputStream(new FileOutputStream(new File(this.mDataBlockFile)));
            byte[] data = new byte[32];
            try {
                try {
                    outputStream.write(data, 0, 32);
                    outputStream.writeInt(PARTITION_TYPE_MARKER);
                    outputStream.writeInt(0);
                    outputStream.flush();
                    IoUtils.closeQuietly(outputStream);
                    doSetOemUnlockEnabledLocked(setOemUnlockEnabled);
                    computeAndWriteDigestLocked();
                } catch (IOException e) {
                    Slog.e(TAG, "failed to format block", e);
                    IoUtils.closeQuietly(outputStream);
                }
            } catch (Throwable th) {
                IoUtils.closeQuietly(outputStream);
                throw th;
            }
        } catch (FileNotFoundException e2) {
            Slog.e(TAG, "partition not available?", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doSetOemUnlockEnabledLocked(boolean enabled) {
        String str = "1";
        try {
            FileOutputStream outputStream = new FileOutputStream(new File(this.mDataBlockFile));
            try {
                FileChannel channel = outputStream.getChannel();
                channel.position(getBlockDeviceSize() - 1);
                byte b = 1;
                ByteBuffer data = ByteBuffer.allocate(1);
                if (!enabled) {
                    b = 0;
                }
                data.put(b);
                data.flip();
                channel.write(data);
                outputStream.flush();
            } catch (IOException e) {
                Slog.e(TAG, "unable to access persistent partition", e);
            } finally {
                SystemProperties.set(OEM_UNLOCK_PROP, enabled ? "1" : FLASH_LOCK_UNLOCKED);
                IoUtils.closeQuietly(outputStream);
            }
        } catch (FileNotFoundException e2) {
            Slog.e(TAG, "partition not available", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean doGetOemUnlockEnabled() {
        boolean z;
        try {
            DataInputStream inputStream = new DataInputStream(new FileInputStream(new File(this.mDataBlockFile)));
            try {
                try {
                    synchronized (this.mLock) {
                        inputStream.skip(getBlockDeviceSize() - 1);
                        z = inputStream.readByte() != 0;
                    }
                    IoUtils.closeQuietly(inputStream);
                    return z;
                } catch (Throwable th) {
                    IoUtils.closeQuietly(inputStream);
                    throw th;
                }
            } catch (IOException e) {
                Slog.e(TAG, "unable to access persistent partition", e);
                IoUtils.closeQuietly(inputStream);
                return false;
            }
        } catch (FileNotFoundException e2) {
            Slog.e(TAG, "partition not available");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long doGetMaximumDataBlockSize() {
        long actualSize = ((((getBlockDeviceSize() - 8) - 32) - JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY) - 1000) - 1;
        if (actualSize <= 102400) {
            return actualSize;
        }
        return 102400L;
    }
}
