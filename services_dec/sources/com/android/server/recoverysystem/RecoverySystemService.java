package com.android.server.recoverysystem;

import android.content.Context;
import android.content.IntentSender;
import android.net.INetd;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.os.Binder;
import android.os.IRecoverySystem;
import android.os.IRecoverySystemProgressListener;
import android.os.PowerManager;
import android.os.RecoverySystem;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.SystemProperties;
import android.util.Slog;
import com.android.internal.widget.LockSettingsInternal;
import com.android.internal.widget.RebootEscrowListener;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileDescriptor;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class RecoverySystemService extends IRecoverySystem.Stub implements RebootEscrowListener {
    private static final boolean DEBUG = false;
    static final String INIT_SERVICE_CLEAR_BCB = "init.svc.clear-bcb";
    static final String INIT_SERVICE_SETUP_BCB = "init.svc.setup-bcb";
    static final String INIT_SERVICE_UNCRYPT = "init.svc.uncrypt";
    private static final int SOCKET_CONNECTION_MAX_RETRY = 30;
    private static final String TAG = "RecoverySystemService";
    private static final String UNCRYPT_SOCKET = "uncrypt";
    private static final Object sRequestLock = new Object();
    private final Context mContext;
    private final Injector mInjector;
    private boolean mPreparedForReboot;
    private IntentSender mPreparedForRebootIntentSender;
    private String mUnattendedRebootToken;

    static class Injector {
        protected final Context mContext;

        Injector(Context context) {
            this.mContext = context;
        }

        public Context getContext() {
            return this.mContext;
        }

        public LockSettingsInternal getLockSettingsService() {
            return (LockSettingsInternal) LocalServices.getService(LockSettingsInternal.class);
        }

        public PowerManager getPowerManager() {
            return (PowerManager) this.mContext.getSystemService("power");
        }

        public String systemPropertiesGet(String key) {
            return SystemProperties.get(key);
        }

        public void systemPropertiesSet(String key, String value) {
            SystemProperties.set(key, value);
        }

        public boolean uncryptPackageFileDelete() {
            return RecoverySystem.UNCRYPT_PACKAGE_FILE.delete();
        }

        public String getUncryptPackageFileName() {
            return RecoverySystem.UNCRYPT_PACKAGE_FILE.getName();
        }

        public FileWriter getUncryptPackageFileWriter() throws IOException {
            return new FileWriter(RecoverySystem.UNCRYPT_PACKAGE_FILE);
        }

        public UncryptSocket connectService() {
            UncryptSocket socket = new UncryptSocket();
            if (!socket.connectService()) {
                socket.close();
                return null;
            }
            return socket;
        }

        public void threadSleep(long millis) throws InterruptedException {
            Thread.sleep(millis);
        }
    }

    public static final class Lifecycle extends SystemService {
        private RecoverySystemService mRecoverySystemService;

        public Lifecycle(Context context) {
            super(context);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            if (phase == 500) {
                this.mRecoverySystemService.onSystemServicesReady();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [android.os.IBinder, com.android.server.recoverysystem.RecoverySystemService] */
        @Override // com.android.server.SystemService
        public void onStart() {
            ?? recoverySystemService = new RecoverySystemService(getContext());
            this.mRecoverySystemService = recoverySystemService;
            publishBinderService("recovery", recoverySystemService);
        }
    }

    private RecoverySystemService(Context context) {
        this(new Injector(context));
    }

    RecoverySystemService(Injector injector) {
        this.mInjector = injector;
        this.mContext = injector.getContext();
    }

    void onSystemServicesReady() {
        LockSettingsInternal lockSettings = this.mInjector.getLockSettingsService();
        if (lockSettings == null) {
            Slog.e(TAG, "Failed to get lock settings service, skipping set RebootEscrowListener");
        } else {
            lockSettings.setRebootEscrowListener(this);
        }
    }

    public boolean uncrypt(String filename, IRecoverySystemProgressListener listener) {
        synchronized (sRequestLock) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.RECOVERY", null);
            if (!checkAndWaitForUncryptService()) {
                Slog.e(TAG, "uncrypt service is unavailable.");
                return false;
            }
            this.mInjector.uncryptPackageFileDelete();
            try {
                FileWriter uncryptFile = this.mInjector.getUncryptPackageFileWriter();
                try {
                    uncryptFile.write(filename + "\n");
                    if (uncryptFile != null) {
                        uncryptFile.close();
                    }
                    this.mInjector.systemPropertiesSet("ctl.start", UNCRYPT_SOCKET);
                    UncryptSocket socket = this.mInjector.connectService();
                    if (socket == null) {
                        Slog.e(TAG, "Failed to connect to uncrypt socket");
                        return false;
                    }
                    int lastStatus = Integer.MIN_VALUE;
                    while (true) {
                        try {
                            try {
                                int status = socket.getPercentageUncrypted();
                                if (status != lastStatus || lastStatus == Integer.MIN_VALUE) {
                                    lastStatus = status;
                                    if (status < 0 || status > 100) {
                                        Slog.e(TAG, "uncrypt failed with status: " + status);
                                        socket.sendAck();
                                        socket.close();
                                        return false;
                                    }
                                    Slog.i(TAG, "uncrypt read status: " + status);
                                    if (listener != null) {
                                        try {
                                            listener.onProgress(status);
                                        } catch (RemoteException e) {
                                            Slog.w(TAG, "RemoteException when posting progress");
                                        }
                                    }
                                    if (status == 100) {
                                        Slog.i(TAG, "uncrypt successfully finished.");
                                        socket.sendAck();
                                        socket.close();
                                        return true;
                                    }
                                }
                            } catch (Throwable th) {
                                socket.close();
                                throw th;
                            }
                        } catch (IOException e2) {
                            Slog.e(TAG, "IOException when reading status: ", e2);
                            socket.close();
                            return false;
                        }
                    }
                } catch (Throwable th2) {
                    if (uncryptFile != null) {
                        try {
                            uncryptFile.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            } catch (IOException e3) {
                Slog.e(TAG, "IOException when writing \"" + this.mInjector.getUncryptPackageFileName() + "\":", e3);
                return false;
            }
        }
    }

    public boolean clearBcb() {
        boolean z;
        synchronized (sRequestLock) {
            z = setupOrClearBcb(false, null);
        }
        return z;
    }

    public boolean setupBcb(String command) {
        boolean z;
        synchronized (sRequestLock) {
            z = setupOrClearBcb(true, command);
        }
        return z;
    }

    public void rebootRecoveryWithCommand(String command) {
        synchronized (sRequestLock) {
            if (setupOrClearBcb(true, command)) {
                PowerManager pm = this.mInjector.getPowerManager();
                pm.reboot("recovery");
            }
        }
    }

    public boolean requestLskf(String updateToken, IntentSender intentSender) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.RECOVERY", null);
        if (updateToken == null) {
            return false;
        }
        if (this.mPreparedForReboot && updateToken.equals(this.mUnattendedRebootToken)) {
            return true;
        }
        this.mPreparedForReboot = false;
        this.mUnattendedRebootToken = updateToken;
        this.mPreparedForRebootIntentSender = intentSender;
        long origId = Binder.clearCallingIdentity();
        try {
            LockSettingsInternal lockSettings = this.mInjector.getLockSettingsService();
            if (lockSettings == null) {
                Slog.e(TAG, "Failed to get lock settings service, skipping prepareRebootEscrow");
                return false;
            }
            lockSettings.prepareRebootEscrow();
            return true;
        } finally {
            Binder.restoreCallingIdentity(origId);
        }
    }

    public void onPreparedForReboot(boolean ready) {
        if (this.mUnattendedRebootToken == null) {
            Slog.w(TAG, "onPreparedForReboot called when mUnattendedRebootToken is null");
        }
        this.mPreparedForReboot = ready;
        if (ready) {
            sendPreparedForRebootIntentIfNeeded();
        }
    }

    private void sendPreparedForRebootIntentIfNeeded() {
        IntentSender intentSender = this.mPreparedForRebootIntentSender;
        if (intentSender != null) {
            try {
                intentSender.sendIntent(null, 0, null, null, null);
            } catch (IntentSender.SendIntentException e) {
                Slog.w(TAG, "Could not send intent for prepared reboot: " + e.getMessage());
            }
        }
    }

    public boolean clearLskf() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.RECOVERY", null);
        this.mPreparedForReboot = false;
        this.mUnattendedRebootToken = null;
        this.mPreparedForRebootIntentSender = null;
        long origId = Binder.clearCallingIdentity();
        try {
            LockSettingsInternal lockSettings = this.mInjector.getLockSettingsService();
            if (lockSettings == null) {
                Slog.e(TAG, "Failed to get lock settings service, skipping clearRebootEscrow");
                return false;
            }
            lockSettings.clearRebootEscrow();
            return true;
        } finally {
            Binder.restoreCallingIdentity(origId);
        }
    }

    public boolean rebootWithLskf(String updateToken, String reason) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.RECOVERY", null);
        if (!this.mPreparedForReboot) {
            Slog.i(TAG, "Reboot requested before prepare completed");
            return false;
        }
        if (updateToken != null && !updateToken.equals(this.mUnattendedRebootToken)) {
            Slog.i(TAG, "Reboot requested after preparation, but with mismatching token");
            return false;
        }
        LockSettingsInternal lockSettings = this.mInjector.getLockSettingsService();
        if (lockSettings == null) {
            Slog.e(TAG, "Failed to get lock settings service, skipping armRebootEscrow");
            return false;
        }
        if (!lockSettings.armRebootEscrow()) {
            Slog.w(TAG, "Failure to escrow key for reboot");
            return false;
        }
        PowerManager pm = this.mInjector.getPowerManager();
        pm.reboot(reason);
        return true;
    }

    private boolean checkAndWaitForUncryptService() {
        int retry = 0;
        while (true) {
            if (retry >= 30) {
                return false;
            }
            String uncryptService = this.mInjector.systemPropertiesGet(INIT_SERVICE_UNCRYPT);
            String setupBcbService = this.mInjector.systemPropertiesGet(INIT_SERVICE_SETUP_BCB);
            String clearBcbService = this.mInjector.systemPropertiesGet(INIT_SERVICE_CLEAR_BCB);
            boolean busy = INetd.IF_FLAG_RUNNING.equals(uncryptService) || INetd.IF_FLAG_RUNNING.equals(setupBcbService) || INetd.IF_FLAG_RUNNING.equals(clearBcbService);
            if (!busy) {
                return true;
            }
            try {
                this.mInjector.threadSleep(1000L);
            } catch (InterruptedException e) {
                Slog.w(TAG, "Interrupted:", e);
            }
            retry++;
        }
    }

    private boolean setupOrClearBcb(boolean isSetup, String command) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.RECOVERY", null);
        boolean available = checkAndWaitForUncryptService();
        if (!available) {
            Slog.e(TAG, "uncrypt service is unavailable.");
            return false;
        }
        if (isSetup) {
            this.mInjector.systemPropertiesSet("ctl.start", "setup-bcb");
        } else {
            this.mInjector.systemPropertiesSet("ctl.start", "clear-bcb");
        }
        UncryptSocket socket = this.mInjector.connectService();
        if (socket == null) {
            Slog.e(TAG, "Failed to connect to uncrypt socket");
            return false;
        }
        try {
            if (isSetup) {
                socket.sendCommand(command);
            }
            int status = socket.getPercentageUncrypted();
            socket.sendAck();
            if (status != 100) {
                Slog.e(TAG, "uncrypt failed with status: " + status);
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("uncrypt ");
            sb.append(isSetup ? "setup" : "clear");
            sb.append(" bcb successfully finished.");
            Slog.i(TAG, sb.toString());
            return true;
        } catch (IOException e) {
            Slog.e(TAG, "IOException when communicating with uncrypt:", e);
            return false;
        } finally {
            socket.close();
        }
    }

    public static class UncryptSocket {
        private DataInputStream mInputStream;
        private LocalSocket mLocalSocket;
        private DataOutputStream mOutputStream;

        public boolean connectService() {
            this.mLocalSocket = new LocalSocket();
            boolean done = false;
            for (int retry = 0; retry < 30; retry++) {
                try {
                    this.mLocalSocket.connect(new LocalSocketAddress(RecoverySystemService.UNCRYPT_SOCKET, LocalSocketAddress.Namespace.RESERVED));
                    done = true;
                    break;
                } catch (IOException e) {
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e2) {
                        Slog.w(RecoverySystemService.TAG, "Interrupted:", e2);
                    }
                }
            }
            if (!done) {
                Slog.e(RecoverySystemService.TAG, "Timed out connecting to uncrypt socket");
                close();
                return false;
            }
            try {
                this.mInputStream = new DataInputStream(this.mLocalSocket.getInputStream());
                this.mOutputStream = new DataOutputStream(this.mLocalSocket.getOutputStream());
                return true;
            } catch (IOException e3) {
                close();
                return false;
            }
        }

        public void sendCommand(String command) throws IOException {
            byte[] cmdUtf8 = command.getBytes(StandardCharsets.UTF_8);
            this.mOutputStream.writeInt(cmdUtf8.length);
            this.mOutputStream.write(cmdUtf8, 0, cmdUtf8.length);
        }

        public int getPercentageUncrypted() throws IOException {
            return this.mInputStream.readInt();
        }

        public void sendAck() throws IOException {
            this.mOutputStream.writeInt(0);
        }

        public void close() {
            IoUtils.closeQuietly(this.mInputStream);
            IoUtils.closeQuietly(this.mOutputStream);
            IoUtils.closeQuietly(this.mLocalSocket);
        }
    }

    private boolean isCallerShell() {
        int callingUid = Binder.getCallingUid();
        return callingUid == 2000 || callingUid == 0;
    }

    private void enforceShell() {
        if (!isCallerShell()) {
            throw new SecurityException("Caller must be shell");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) throws Throwable {
        enforceShell();
        long origId = Binder.clearCallingIdentity();
        try {
            try {
                new RecoverySystemShellCommand(this).exec(this, in, out, err, args, callback, resultReceiver);
                Binder.restoreCallingIdentity(origId);
            } catch (Throwable th) {
                th = th;
                Binder.restoreCallingIdentity(origId);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
