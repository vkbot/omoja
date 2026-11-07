package com.android.server.notification;

import android.app.AlarmManager;
import android.app.NotificationHistory;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.Handler;
import android.util.AtomicFile;
import android.util.Slog;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public class NotificationHistoryDatabase {
    private static final int DEFAULT_CURRENT_VERSION = 1;
    private static final String EXTRA_KEY = "key";
    private static final int HISTORY_RETENTION_DAYS = 1;
    private static final int HISTORY_RETENTION_MS = 86400000;
    private static final long INVALID_FILE_TIME_MS = -1;
    private static final int REQUEST_CODE_DELETION = 1;
    private static final String SCHEME_DELETION = "delete";
    private static final String TAG = "NotiHistoryDatabase";
    private static final long WRITE_BUFFER_INTERVAL_MS = 1200000;
    private final AlarmManager mAlarmManager;
    private final Context mContext;
    private final Handler mFileWriteHandler;
    private final File mHistoryDir;
    private final File mVersionFile;
    private static final boolean DEBUG = NotificationManagerService.DBG;
    private static final String ACTION_HISTORY_DELETION = NotificationHistoryDatabase.class.getSimpleName() + ".CLEANUP";
    private final Object mLock = new Object();
    private final BroadcastReceiver mFileCleaupReceiver = new BroadcastReceiver() { // from class: com.android.server.notification.NotificationHistoryDatabase.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action != null && NotificationHistoryDatabase.ACTION_HISTORY_DELETION.equals(action)) {
                try {
                    synchronized (NotificationHistoryDatabase.this.mLock) {
                        String filePath = intent.getStringExtra(NotificationHistoryDatabase.EXTRA_KEY);
                        AtomicFile fileToDelete = new AtomicFile(new File(filePath));
                        if (NotificationHistoryDatabase.DEBUG) {
                            Slog.d(NotificationHistoryDatabase.TAG, "Removed " + fileToDelete.getBaseFile().getName());
                        }
                        fileToDelete.delete();
                        NotificationHistoryDatabase.this.mHistoryFiles.remove(fileToDelete);
                    }
                } catch (Exception e) {
                    Slog.e(NotificationHistoryDatabase.TAG, "Failed to delete notification history file", e);
                }
            }
        }
    };
    private int mCurrentVersion = 1;
    final LinkedList<AtomicFile> mHistoryFiles = new LinkedList<>();
    NotificationHistory mBuffer = new NotificationHistory();
    private final WriteBufferRunnable mWriteBufferRunnable = new WriteBufferRunnable();

    public NotificationHistoryDatabase(Context context, Handler fileWriteHandler, File dir) {
        this.mContext = context;
        this.mAlarmManager = (AlarmManager) context.getSystemService(AlarmManager.class);
        this.mFileWriteHandler = fileWriteHandler;
        this.mVersionFile = new File(dir, "version");
        this.mHistoryDir = new File(dir, "history");
        IntentFilter deletionFilter = new IntentFilter(ACTION_HISTORY_DELETION);
        deletionFilter.addDataScheme(SCHEME_DELETION);
        this.mContext.registerReceiver(this.mFileCleaupReceiver, deletionFilter);
    }

    public void init() {
        synchronized (this.mLock) {
            try {
                if (!this.mHistoryDir.exists() && !this.mHistoryDir.mkdir()) {
                    throw new IllegalStateException("could not create history directory");
                }
                this.mVersionFile.createNewFile();
            } catch (Exception e) {
                Slog.e(TAG, "could not create needed files", e);
            }
            checkVersionAndBuildLocked();
            indexFilesLocked();
            prune(1, System.currentTimeMillis());
        }
    }

    private void indexFilesLocked() {
        this.mHistoryFiles.clear();
        File[] files = this.mHistoryDir.listFiles();
        if (files == null) {
            return;
        }
        Arrays.sort(files, new Comparator() { // from class: com.android.server.notification.-$$Lambda$NotificationHistoryDatabase$DOpPLk6FC4M8AMJ1FHTPtwlmVmQ
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(NotificationHistoryDatabase.safeParseLong(((File) obj2).getName()), NotificationHistoryDatabase.safeParseLong(((File) obj).getName()));
            }
        });
        for (File file : files) {
            this.mHistoryFiles.addLast(new AtomicFile(file));
        }
    }

    private void checkVersionAndBuildLocked() {
        int version;
        try {
            BufferedReader reader = new BufferedReader(new FileReader(this.mVersionFile));
            try {
                version = Integer.parseInt(reader.readLine());
                reader.close();
            } catch (Throwable th) {
                try {
                    reader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | NumberFormatException e) {
            version = 0;
        }
        if (version != this.mCurrentVersion && this.mVersionFile.exists()) {
            try {
                BufferedWriter writer = new BufferedWriter(new FileWriter(this.mVersionFile));
                try {
                    writer.write(Integer.toString(this.mCurrentVersion));
                    writer.write("\n");
                    writer.flush();
                    writer.close();
                } catch (Throwable th3) {
                    try {
                        writer.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (IOException e2) {
                Slog.e(TAG, "Failed to write new version");
                throw new RuntimeException(e2);
            }
        }
    }

    public void forceWriteToDisk() {
        this.mFileWriteHandler.post(this.mWriteBufferRunnable);
    }

    public void onPackageRemoved(String packageName) {
        RemovePackageRunnable rpr = new RemovePackageRunnable(packageName);
        this.mFileWriteHandler.post(rpr);
    }

    public void deleteNotificationHistoryItem(String pkg, long postedTime) {
        RemoveNotificationRunnable rnr = new RemoveNotificationRunnable(pkg, postedTime);
        this.mFileWriteHandler.post(rnr);
    }

    public void deleteConversation(String pkg, String conversationId) {
        RemoveConversationRunnable rcr = new RemoveConversationRunnable(pkg, conversationId);
        this.mFileWriteHandler.post(rcr);
    }

    public void addNotification(NotificationHistory.HistoricalNotification notification) {
        synchronized (this.mLock) {
            this.mBuffer.addNewNotificationToWrite(notification);
            if (this.mBuffer.getHistoryCount() == 1) {
                this.mFileWriteHandler.postDelayed(this.mWriteBufferRunnable, WRITE_BUFFER_INTERVAL_MS);
            }
        }
    }

    public NotificationHistory readNotificationHistory() {
        NotificationHistory notifications;
        synchronized (this.mLock) {
            notifications = new NotificationHistory();
            notifications.addNotificationsToWrite(this.mBuffer);
            for (AtomicFile file : this.mHistoryFiles) {
                try {
                    readLocked(file, notifications, new NotificationHistoryFilter.Builder().build());
                } catch (Exception e) {
                    Slog.e(TAG, "error reading " + file.getBaseFile().getAbsolutePath(), e);
                }
            }
        }
        return notifications;
    }

    public NotificationHistory readNotificationHistory(String packageName, String channelId, int maxNotifications) {
        NotificationHistory notifications;
        synchronized (this.mLock) {
            notifications = new NotificationHistory();
            for (AtomicFile file : this.mHistoryFiles) {
                try {
                    readLocked(file, notifications, new NotificationHistoryFilter.Builder().setPackage(packageName).setChannel(packageName, channelId).setMaxNotifications(maxNotifications).build());
                    if (maxNotifications == notifications.getHistoryCount()) {
                        break;
                    }
                } catch (Exception e) {
                    Slog.e(TAG, "error reading " + file.getBaseFile().getAbsolutePath(), e);
                }
            }
        }
        return notifications;
    }

    public void disableHistory() {
        synchronized (this.mLock) {
            for (AtomicFile file : this.mHistoryFiles) {
                file.delete();
            }
            this.mHistoryDir.delete();
            this.mHistoryFiles.clear();
        }
    }

    void prune(int retentionDays, long currentTimeMillis) {
        synchronized (this.mLock) {
            GregorianCalendar retentionBoundary = new GregorianCalendar();
            retentionBoundary.setTimeInMillis(currentTimeMillis);
            retentionBoundary.add(5, retentionDays * (-1));
            for (int i = this.mHistoryFiles.size() - 1; i >= 0; i--) {
                AtomicFile currentOldestFile = this.mHistoryFiles.get(i);
                long creationTime = safeParseLong(currentOldestFile.getBaseFile().getName());
                if (DEBUG) {
                    Slog.d(TAG, "File " + currentOldestFile.getBaseFile().getName() + " created on " + creationTime);
                }
                if (creationTime <= retentionBoundary.getTimeInMillis()) {
                    deleteFile(currentOldestFile);
                } else {
                    scheduleDeletion(currentOldestFile.getBaseFile(), creationTime, retentionDays);
                }
            }
        }
    }

    private void deleteFile(AtomicFile file) {
        if (DEBUG) {
            Slog.d(TAG, "Removed " + file.getBaseFile().getName());
        }
        file.delete();
        this.mHistoryFiles.remove(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleDeletion(File file, long creationTime, int retentionDays) {
        long deletionTime = ((long) (HISTORY_RETENTION_MS * retentionDays)) + creationTime;
        scheduleDeletion(file, deletionTime);
    }

    private void scheduleDeletion(File file, long deletionTime) {
        if (DEBUG) {
            Slog.d(TAG, "Scheduling deletion for " + file.getName() + " at " + deletionTime);
        }
        PendingIntent pi = PendingIntent.getBroadcast(this.mContext, 1, new Intent(ACTION_HISTORY_DELETION).setData(new Uri.Builder().scheme(SCHEME_DELETION).appendPath(file.getAbsolutePath()).build()).addFlags(AudioFormat.EVRC).putExtra(EXTRA_KEY, file.getAbsolutePath()), AudioFormat.OPUS);
        this.mAlarmManager.setExactAndAllowWhileIdle(0, deletionTime, pi);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeLocked(AtomicFile file, NotificationHistory notifications) throws IOException {
        FileOutputStream fos = file.startWrite();
        try {
            NotificationHistoryProtoHelper.write(fos, notifications, this.mCurrentVersion);
            file.finishWrite(fos);
            fos = null;
        } finally {
            file.failWrite(fos);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void readLocked(android.util.AtomicFile r5, android.app.NotificationHistory r6, com.android.server.notification.NotificationHistoryFilter r7) throws java.io.IOException {
        /*
            r0 = 0
            java.io.FileInputStream r1 = r5.openRead()     // Catch: java.lang.Throwable -> Lf java.io.FileNotFoundException -> L11
            r0 = r1
            com.android.server.notification.NotificationHistoryProtoHelper.read(r0, r6, r7)     // Catch: java.lang.Throwable -> Lf java.io.FileNotFoundException -> L11
            if (r0 == 0) goto Le
            r0.close()
        Le:
            return
        Lf:
            r1 = move-exception
            goto L32
        L11:
            r1 = move-exception
            java.lang.String r2 = "NotiHistoryDatabase"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lf
            r3.<init>()     // Catch: java.lang.Throwable -> Lf
            java.lang.String r4 = "Cannot open "
            r3.append(r4)     // Catch: java.lang.Throwable -> Lf
            java.io.File r4 = r5.getBaseFile()     // Catch: java.lang.Throwable -> Lf
            java.lang.String r4 = r4.getAbsolutePath()     // Catch: java.lang.Throwable -> Lf
            r3.append(r4)     // Catch: java.lang.Throwable -> Lf
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lf
            android.util.Slog.e(r2, r3, r1)     // Catch: java.lang.Throwable -> Lf
            throw r1     // Catch: java.lang.Throwable -> Lf
        L32:
            if (r0 == 0) goto L37
            r0.close()
        L37:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.notification.NotificationHistoryDatabase.readLocked(android.util.AtomicFile, android.app.NotificationHistory, com.android.server.notification.NotificationHistoryFilter):void");
    }

    private static long safeParseLong(String fileName) {
        try {
            return Long.parseLong(fileName);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    final class WriteBufferRunnable implements Runnable {
        WriteBufferRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long time = System.currentTimeMillis();
            run(time, new AtomicFile(new File(NotificationHistoryDatabase.this.mHistoryDir, String.valueOf(time))));
        }

        void run(long time, AtomicFile file) {
            synchronized (NotificationHistoryDatabase.this.mLock) {
                if (NotificationHistoryDatabase.DEBUG) {
                    Slog.d(NotificationHistoryDatabase.TAG, "WriteBufferRunnable " + file.getBaseFile().getAbsolutePath());
                }
                try {
                    NotificationHistoryDatabase.this.writeLocked(file, NotificationHistoryDatabase.this.mBuffer);
                    NotificationHistoryDatabase.this.mHistoryFiles.addFirst(file);
                    NotificationHistoryDatabase.this.mBuffer = new NotificationHistory();
                    NotificationHistoryDatabase.this.scheduleDeletion(file.getBaseFile(), time, 1);
                } catch (IOException e) {
                    Slog.e(NotificationHistoryDatabase.TAG, "Failed to write buffer to disk. not flushing buffer", e);
                }
            }
        }
    }

    private final class RemovePackageRunnable implements Runnable {
        private String mPkg;

        public RemovePackageRunnable(String pkg) {
            this.mPkg = pkg;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (NotificationHistoryDatabase.DEBUG) {
                Slog.d(NotificationHistoryDatabase.TAG, "RemovePackageRunnable " + this.mPkg);
            }
            synchronized (NotificationHistoryDatabase.this.mLock) {
                NotificationHistoryDatabase.this.mBuffer.removeNotificationsFromWrite(this.mPkg);
                for (AtomicFile af : NotificationHistoryDatabase.this.mHistoryFiles) {
                    try {
                        NotificationHistory notifications = new NotificationHistory();
                        NotificationHistoryDatabase.readLocked(af, notifications, new NotificationHistoryFilter.Builder().build());
                        notifications.removeNotificationsFromWrite(this.mPkg);
                        NotificationHistoryDatabase.this.writeLocked(af, notifications);
                    } catch (Exception e) {
                        Slog.e(NotificationHistoryDatabase.TAG, "Cannot clean up file on pkg removal " + af.getBaseFile().getAbsolutePath(), e);
                    }
                }
            }
        }
    }

    final class RemoveNotificationRunnable implements Runnable {
        private NotificationHistory mNotificationHistory;
        private String mPkg;
        private long mPostedTime;

        public RemoveNotificationRunnable(String pkg, long postedTime) {
            this.mPkg = pkg;
            this.mPostedTime = postedTime;
        }

        void setNotificationHistory(NotificationHistory nh) {
            this.mNotificationHistory = nh;
        }

        @Override // java.lang.Runnable
        public void run() {
            NotificationHistory notificationHistory;
            if (NotificationHistoryDatabase.DEBUG) {
                Slog.d(NotificationHistoryDatabase.TAG, "RemoveNotificationRunnable");
            }
            synchronized (NotificationHistoryDatabase.this.mLock) {
                NotificationHistoryDatabase.this.mBuffer.removeNotificationFromWrite(this.mPkg, this.mPostedTime);
                for (AtomicFile af : NotificationHistoryDatabase.this.mHistoryFiles) {
                    try {
                        if (this.mNotificationHistory != null) {
                            notificationHistory = this.mNotificationHistory;
                        } else {
                            notificationHistory = new NotificationHistory();
                        }
                        NotificationHistoryDatabase.readLocked(af, notificationHistory, new NotificationHistoryFilter.Builder().build());
                        if (notificationHistory.removeNotificationFromWrite(this.mPkg, this.mPostedTime)) {
                            NotificationHistoryDatabase.this.writeLocked(af, notificationHistory);
                        }
                    } catch (Exception e) {
                        Slog.e(NotificationHistoryDatabase.TAG, "Cannot clean up file on notification removal " + af.getBaseFile().getName(), e);
                    }
                }
            }
        }
    }

    final class RemoveConversationRunnable implements Runnable {
        private String mConversationId;
        private NotificationHistory mNotificationHistory;
        private String mPkg;

        public RemoveConversationRunnable(String pkg, String conversationId) {
            this.mPkg = pkg;
            this.mConversationId = conversationId;
        }

        void setNotificationHistory(NotificationHistory nh) {
            this.mNotificationHistory = nh;
        }

        @Override // java.lang.Runnable
        public void run() {
            NotificationHistory notificationHistory;
            if (NotificationHistoryDatabase.DEBUG) {
                Slog.d(NotificationHistoryDatabase.TAG, "RemoveConversationRunnable " + this.mPkg + " " + this.mConversationId);
            }
            synchronized (NotificationHistoryDatabase.this.mLock) {
                NotificationHistoryDatabase.this.mBuffer.removeConversationFromWrite(this.mPkg, this.mConversationId);
                for (AtomicFile af : NotificationHistoryDatabase.this.mHistoryFiles) {
                    try {
                        if (this.mNotificationHistory != null) {
                            notificationHistory = this.mNotificationHistory;
                        } else {
                            notificationHistory = new NotificationHistory();
                        }
                        NotificationHistoryDatabase.readLocked(af, notificationHistory, new NotificationHistoryFilter.Builder().build());
                        if (notificationHistory.removeConversationFromWrite(this.mPkg, this.mConversationId)) {
                            NotificationHistoryDatabase.this.writeLocked(af, notificationHistory);
                        }
                    } catch (Exception e) {
                        Slog.e(NotificationHistoryDatabase.TAG, "Cannot clean up file on conversation removal " + af.getBaseFile().getName(), e);
                    }
                }
            }
        }
    }
}
