package com.android.server.locksettings;

import android.content.Context;
import android.content.pm.UserInfo;
import android.hardware.rebootescrow.IRebootEscrow;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.SystemClock;
import android.os.UserManager;
import android.provider.Settings;
import android.util.Slog;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.widget.RebootEscrowListener;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
class RebootEscrowManager {
    private static final int BOOT_COUNT_TOLERANCE = 5;
    public static final String REBOOT_ESCROW_ARMED_KEY = "reboot_escrow_armed_count";
    private static final String TAG = "RebootEscrowManager";
    private final Callbacks mCallbacks;
    private final RebootEscrowEventLog mEventLog;
    private final Injector mInjector;
    private final Object mKeyGenerationLock;
    private RebootEscrowKey mPendingRebootEscrowKey;
    private RebootEscrowListener mRebootEscrowListener;
    private boolean mRebootEscrowReady;
    private boolean mRebootEscrowWanted;
    private final LockSettingsStorage mStorage;
    private final UserManager mUserManager;

    interface Callbacks {
        boolean isUserSecure(int i);

        void onRebootEscrowRestored(byte b, byte[] bArr, int i);
    }

    static class Injector {
        protected Context mContext;

        Injector(Context context) {
            this.mContext = context;
        }

        public Context getContext() {
            return this.mContext;
        }

        public UserManager getUserManager() {
            return (UserManager) this.mContext.getSystemService("user");
        }

        public IRebootEscrow getRebootEscrow() {
            try {
                return IRebootEscrow.Stub.asInterface(ServiceManager.getService("android.hardware.rebootescrow.IRebootEscrow/default"));
            } catch (NoSuchElementException e) {
                Slog.i(RebootEscrowManager.TAG, "Device doesn't implement RebootEscrow HAL");
                return null;
            }
        }

        public int getBootCount() {
            return Settings.Global.getInt(this.mContext.getContentResolver(), "boot_count", 0);
        }

        public void reportMetric(boolean success) {
            FrameworkStatsLog.write(238, success);
        }

        public RebootEscrowEventLog getEventLog() {
            return new RebootEscrowEventLog();
        }
    }

    RebootEscrowManager(Context context, Callbacks callbacks, LockSettingsStorage storage) {
        this(new Injector(context), callbacks, storage);
    }

    RebootEscrowManager(Injector injector, Callbacks callbacks, LockSettingsStorage storage) {
        this.mKeyGenerationLock = new Object();
        this.mInjector = injector;
        this.mCallbacks = callbacks;
        this.mStorage = storage;
        this.mUserManager = injector.getUserManager();
        this.mEventLog = injector.getEventLog();
    }

    void loadRebootEscrowDataIfAvailable() {
        List<UserInfo> users = this.mUserManager.getUsers();
        List<UserInfo> rebootEscrowUsers = new ArrayList<>();
        for (UserInfo user : users) {
            if (this.mCallbacks.isUserSecure(user.id) && this.mStorage.hasRebootEscrow(user.id)) {
                rebootEscrowUsers.add(user);
            }
        }
        if (rebootEscrowUsers.isEmpty()) {
            return;
        }
        RebootEscrowKey escrowKey = getAndClearRebootEscrowKey();
        if (escrowKey == null) {
            Slog.w(TAG, "Had reboot escrow data for users, but no key; removing escrow storage.");
            for (UserInfo user2 : users) {
                this.mStorage.removeRebootEscrow(user2.id);
            }
            onEscrowRestoreComplete(false);
            return;
        }
        this.mEventLog.addEntry(1);
        boolean allUsersUnlocked = true;
        for (UserInfo user3 : rebootEscrowUsers) {
            allUsersUnlocked &= restoreRebootEscrowForUser(user3.id, escrowKey);
        }
        onEscrowRestoreComplete(allUsersUnlocked);
    }

    private void onEscrowRestoreComplete(boolean success) {
        int previousBootCount = this.mStorage.getInt(REBOOT_ESCROW_ARMED_KEY, -1, 0);
        this.mStorage.removeKey(REBOOT_ESCROW_ARMED_KEY, 0);
        int bootCountDelta = this.mInjector.getBootCount() - previousBootCount;
        if (success || (previousBootCount != -1 && bootCountDelta <= 5)) {
            this.mInjector.reportMetric(success);
        }
    }

    private RebootEscrowKey getAndClearRebootEscrowKey() {
        IRebootEscrow rebootEscrow = this.mInjector.getRebootEscrow();
        if (rebootEscrow == null) {
            Slog.w(TAG, "Had reboot escrow data for users, but RebootEscrow HAL is unavailable");
            return null;
        }
        try {
            byte[] escrowKeyBytes = rebootEscrow.retrieveKey();
            if (escrowKeyBytes == null) {
                Slog.w(TAG, "Had reboot escrow data for users, but could not retrieve key");
                return null;
            }
            if (escrowKeyBytes.length != 32) {
                Slog.e(TAG, "IRebootEscrow returned key of incorrect size " + escrowKeyBytes.length);
                return null;
            }
            int zero = 0;
            for (int i : escrowKeyBytes) {
                zero |= i;
            }
            if (zero == 0) {
                Slog.w(TAG, "IRebootEscrow returned an all-zeroes key");
                return null;
            }
            rebootEscrow.storeKey(new byte[32]);
            this.mEventLog.addEntry(4);
            return RebootEscrowKey.fromKeyBytes(escrowKeyBytes);
        } catch (RemoteException e) {
            Slog.w(TAG, "Could not retrieve escrow data");
            return null;
        } catch (ServiceSpecificException e2) {
            Slog.w(TAG, "Got service-specific exception: " + e2.errorCode);
            return null;
        }
    }

    private boolean restoreRebootEscrowForUser(int userId, RebootEscrowKey key) {
        if (!this.mStorage.hasRebootEscrow(userId)) {
            return false;
        }
        try {
            byte[] blob = this.mStorage.readRebootEscrow(userId);
            this.mStorage.removeRebootEscrow(userId);
            RebootEscrowData escrowData = RebootEscrowData.fromEncryptedData(key, blob);
            this.mCallbacks.onRebootEscrowRestored(escrowData.getSpVersion(), escrowData.getSyntheticPassword(), userId);
            Slog.i(TAG, "Restored reboot escrow data for user " + userId);
            this.mEventLog.addEntry(7, userId);
            return true;
        } catch (IOException e) {
            Slog.w(TAG, "Could not load reboot escrow data for user " + userId, e);
            return false;
        }
    }

    void callToRebootEscrowIfNeeded(int userId, byte spVersion, byte[] syntheticPassword) {
        if (!this.mRebootEscrowWanted) {
            return;
        }
        IRebootEscrow rebootEscrow = this.mInjector.getRebootEscrow();
        if (rebootEscrow == null) {
            Slog.w(TAG, "Reboot escrow requested, but RebootEscrow HAL is unavailable");
            return;
        }
        RebootEscrowKey escrowKey = generateEscrowKeyIfNeeded();
        if (escrowKey == null) {
            Slog.e(TAG, "Could not generate escrow key");
            return;
        }
        try {
            RebootEscrowData escrowData = RebootEscrowData.fromSyntheticPassword(escrowKey, spVersion, syntheticPassword);
            this.mStorage.writeRebootEscrow(userId, escrowData.getBlob());
            this.mEventLog.addEntry(6, userId);
            setRebootEscrowReady(true);
        } catch (IOException e) {
            setRebootEscrowReady(false);
            Slog.w(TAG, "Could not escrow reboot data", e);
        }
    }

    private RebootEscrowKey generateEscrowKeyIfNeeded() {
        synchronized (this.mKeyGenerationLock) {
            if (this.mPendingRebootEscrowKey != null) {
                return this.mPendingRebootEscrowKey;
            }
            try {
                RebootEscrowKey key = RebootEscrowKey.generate();
                this.mPendingRebootEscrowKey = key;
                return key;
            } catch (IOException e) {
                Slog.w(TAG, "Could not generate reboot escrow key");
                return null;
            }
        }
    }

    private void clearRebootEscrowIfNeeded() {
        this.mRebootEscrowWanted = false;
        setRebootEscrowReady(false);
        IRebootEscrow rebootEscrow = this.mInjector.getRebootEscrow();
        if (rebootEscrow != null) {
            this.mStorage.removeKey(REBOOT_ESCROW_ARMED_KEY, 0);
            try {
                rebootEscrow.storeKey(new byte[32]);
            } catch (RemoteException | ServiceSpecificException e) {
                Slog.w(TAG, "Could not call RebootEscrow HAL to shred key");
            }
            List<UserInfo> users = this.mUserManager.getUsers();
            for (UserInfo user : users) {
                this.mStorage.removeRebootEscrow(user.id);
            }
            this.mEventLog.addEntry(3);
        }
    }

    boolean armRebootEscrowIfNeeded() {
        RebootEscrowKey escrowKey;
        if (!this.mRebootEscrowReady) {
            return false;
        }
        IRebootEscrow rebootEscrow = this.mInjector.getRebootEscrow();
        if (rebootEscrow == null) {
            Slog.w(TAG, "Escrow marked as ready, but RebootEscrow HAL is unavailable");
            return false;
        }
        synchronized (this.mKeyGenerationLock) {
            escrowKey = this.mPendingRebootEscrowKey;
        }
        if (escrowKey == null) {
            Slog.e(TAG, "Escrow key is null, but escrow was marked as ready");
            return false;
        }
        boolean armedRebootEscrow = false;
        try {
            rebootEscrow.storeKey(escrowKey.getKeyBytes());
            armedRebootEscrow = true;
            Slog.i(TAG, "Reboot escrow key stored with RebootEscrow HAL");
        } catch (RemoteException | ServiceSpecificException e) {
            Slog.e(TAG, "Failed escrow secret to RebootEscrow HAL", e);
        }
        if (armedRebootEscrow) {
            this.mStorage.setInt(REBOOT_ESCROW_ARMED_KEY, this.mInjector.getBootCount(), 0);
            this.mEventLog.addEntry(2);
        }
        return armedRebootEscrow;
    }

    private void setRebootEscrowReady(boolean ready) {
        if (this.mRebootEscrowReady != ready) {
            this.mRebootEscrowListener.onPreparedForReboot(ready);
        }
        this.mRebootEscrowReady = ready;
    }

    boolean prepareRebootEscrow() {
        if (this.mInjector.getRebootEscrow() == null) {
            return false;
        }
        clearRebootEscrowIfNeeded();
        this.mRebootEscrowWanted = true;
        this.mEventLog.addEntry(5);
        return true;
    }

    boolean clearRebootEscrow() {
        if (this.mInjector.getRebootEscrow() == null) {
            return false;
        }
        clearRebootEscrowIfNeeded();
        return true;
    }

    void setRebootEscrowListener(RebootEscrowListener listener) {
        this.mRebootEscrowListener = listener;
    }

    public static class RebootEscrowEvent {
        static final int CLEARED_LSKF_REQUEST = 3;
        static final int FOUND_ESCROW_DATA = 1;
        static final int REQUESTED_LSKF = 5;
        static final int RETRIEVED_LSKF_FOR_USER = 7;
        static final int RETRIEVED_STORED_KEK = 4;
        static final int SET_ARMED_STATUS = 2;
        static final int STORED_LSKF_FOR_USER = 6;
        final int mEventId;
        final long mTimestamp;
        final Integer mUserId;
        final long mWallTime;

        RebootEscrowEvent(int eventId) {
            this(eventId, null);
        }

        RebootEscrowEvent(int eventId, Integer userId) {
            this.mEventId = eventId;
            this.mUserId = userId;
            this.mTimestamp = SystemClock.uptimeMillis();
            this.mWallTime = System.currentTimeMillis();
        }

        String getEventDescription() {
            switch (this.mEventId) {
                case 1:
                    return "Found escrow data";
                case 2:
                    return "Set armed status";
                case 3:
                    return "Cleared request for LSKF";
                case 4:
                    return "Retrieved stored KEK";
                case 5:
                    return "Requested LSKF";
                case 6:
                    return "Stored LSKF for user";
                case 7:
                    return "Retrieved LSKF for user";
                default:
                    return "Unknown event ID " + this.mEventId;
            }
        }
    }

    public static class RebootEscrowEventLog {
        private RebootEscrowEvent[] mEntries = new RebootEscrowEvent[16];
        private int mNextIndex = 0;

        void addEntry(int eventId) {
            addEntryInternal(new RebootEscrowEvent(eventId));
        }

        void addEntry(int eventId, int userId) {
            addEntryInternal(new RebootEscrowEvent(eventId, Integer.valueOf(userId)));
        }

        private void addEntryInternal(RebootEscrowEvent event) {
            int index = this.mNextIndex;
            RebootEscrowEvent[] rebootEscrowEventArr = this.mEntries;
            rebootEscrowEventArr[index] = event;
            this.mNextIndex = (this.mNextIndex + 1) % rebootEscrowEventArr.length;
        }

        void dump(IndentingPrintWriter pw) {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
            int i = 0;
            while (true) {
                RebootEscrowEvent[] rebootEscrowEventArr = this.mEntries;
                if (i < rebootEscrowEventArr.length) {
                    RebootEscrowEvent event = rebootEscrowEventArr[(this.mNextIndex + i) % rebootEscrowEventArr.length];
                    if (event != null) {
                        pw.print("Event #");
                        pw.println(i);
                        pw.println(" time=" + sdf.format(new Date(event.mWallTime)) + " (timestamp=" + event.mTimestamp + ")");
                        pw.print(" event=");
                        pw.println(event.getEventDescription());
                        if (event.mUserId != null) {
                            pw.print(" user=");
                            pw.println(event.mUserId);
                        }
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    void dump(IndentingPrintWriter pw) {
        boolean keySet;
        pw.print("mRebootEscrowWanted=");
        pw.println(this.mRebootEscrowWanted);
        pw.print("mRebootEscrowReady=");
        pw.println(this.mRebootEscrowReady);
        pw.print("mRebootEscrowListener=");
        pw.println(this.mRebootEscrowListener);
        synchronized (this.mKeyGenerationLock) {
            keySet = this.mPendingRebootEscrowKey != null;
        }
        pw.print("mPendingRebootEscrowKey is ");
        pw.println(keySet ? "set" : "not set");
        pw.println();
        pw.println("Event log:");
        pw.increaseIndent();
        this.mEventLog.dump(pw);
        pw.println();
        pw.decreaseIndent();
    }
}
