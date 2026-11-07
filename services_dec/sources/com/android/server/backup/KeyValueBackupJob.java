package com.android.server.backup;

import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import com.android.server.pm.PackageManagerService;

/* JADX INFO: loaded from: classes.dex */
public class KeyValueBackupJob extends JobService {
    private static final long MAX_DEFERRAL = 86400000;
    public static final int MAX_JOB_ID = 52418896;
    public static final int MIN_JOB_ID = 52417896;
    private static final String TAG = "KeyValueBackupJob";
    private static final String USER_ID_EXTRA_KEY = "userId";
    private static ComponentName sKeyValueJobService = new ComponentName(PackageManagerService.PLATFORM_PACKAGE_NAME, KeyValueBackupJob.class.getName());
    private static final SparseBooleanArray sScheduledForUserId = new SparseBooleanArray();
    private static final SparseLongArray sNextScheduledForUserId = new SparseLongArray();

    public static void schedule(int userId, Context ctx, BackupManagerConstants constants) throws Throwable {
        schedule(userId, ctx, 0L, constants);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00b6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void schedule(int r19, android.content.Context r20, long r21, com.android.server.backup.BackupManagerConstants r23) throws java.lang.Throwable {
        /*
            r1 = r19
            java.lang.Class<com.android.server.backup.KeyValueBackupJob> r2 = com.android.server.backup.KeyValueBackupJob.class
            monitor-enter(r2)
            android.util.SparseBooleanArray r0 = com.android.server.backup.KeyValueBackupJob.sScheduledForUserId     // Catch: java.lang.Throwable -> Lb8
            boolean r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Lb8
            if (r0 == 0) goto Lf
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lb8
            return
        Lf:
            monitor-enter(r23)     // Catch: java.lang.Throwable -> Lb8
            long r3 = r23.getKeyValueBackupIntervalMilliseconds()     // Catch: java.lang.Throwable -> Laf
            long r5 = r23.getKeyValueBackupFuzzMilliseconds()     // Catch: java.lang.Throwable -> Laf
            int r0 = r23.getKeyValueBackupRequiredNetworkType()     // Catch: java.lang.Throwable -> Laf
            boolean r7 = r23.getKeyValueBackupRequireCharging()     // Catch: java.lang.Throwable -> Laf
            monitor-exit(r23)     // Catch: java.lang.Throwable -> Laf
            r8 = 0
            int r8 = (r21 > r8 ? 1 : (r21 == r8 ? 0 : -1))
            if (r8 > 0) goto L34
            java.util.Random r8 = new java.util.Random     // Catch: java.lang.Throwable -> Lb8
            r8.<init>()     // Catch: java.lang.Throwable -> Lb8
            int r9 = (int) r5     // Catch: java.lang.Throwable -> Lb8
            int r8 = r8.nextInt(r9)     // Catch: java.lang.Throwable -> Lb8
            long r8 = (long) r8
            long r8 = r8 + r3
            goto L36
        L34:
            r8 = r21
        L36:
            java.lang.String r10 = "KeyValueBackupJob"
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lab
            r11.<init>()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r12 = "Scheduling k/v pass in "
            r11.append(r12)     // Catch: java.lang.Throwable -> Lab
            r12 = 1000(0x3e8, double:4.94E-321)
            long r12 = r8 / r12
            r14 = 60
            long r12 = r12 / r14
            r11.append(r12)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r12 = " minutes"
            r11.append(r12)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Throwable -> Lab
            android.util.Slog.v(r10, r11)     // Catch: java.lang.Throwable -> Lab
            android.app.job.JobInfo$Builder r10 = new android.app.job.JobInfo$Builder     // Catch: java.lang.Throwable -> Lab
            int r11 = getJobIdForUserId(r19)     // Catch: java.lang.Throwable -> Lab
            android.content.ComponentName r12 = com.android.server.backup.KeyValueBackupJob.sKeyValueJobService     // Catch: java.lang.Throwable -> Lab
            r10.<init>(r11, r12)     // Catch: java.lang.Throwable -> Lab
            android.app.job.JobInfo$Builder r10 = r10.setMinimumLatency(r8)     // Catch: java.lang.Throwable -> Lab
            android.app.job.JobInfo$Builder r10 = r10.setRequiredNetworkType(r0)     // Catch: java.lang.Throwable -> Lab
            android.app.job.JobInfo$Builder r10 = r10.setRequiresCharging(r7)     // Catch: java.lang.Throwable -> Lab
            r11 = 86400000(0x5265c00, double:4.2687272E-316)
            android.app.job.JobInfo$Builder r10 = r10.setOverrideDeadline(r11)     // Catch: java.lang.Throwable -> Lab
            android.os.Bundle r11 = new android.os.Bundle     // Catch: java.lang.Throwable -> Lab
            r11.<init>()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r12 = "userId"
            r11.putInt(r12, r1)     // Catch: java.lang.Throwable -> Lab
            r10.setTransientExtras(r11)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r12 = "jobscheduler"
            r13 = r20
            java.lang.Object r12 = r13.getSystemService(r12)     // Catch: java.lang.Throwable -> Lbf
            android.app.job.JobScheduler r12 = (android.app.job.JobScheduler) r12     // Catch: java.lang.Throwable -> Lbf
            android.app.job.JobInfo r14 = r10.build()     // Catch: java.lang.Throwable -> Lbf
            r12.schedule(r14)     // Catch: java.lang.Throwable -> Lbf
            android.util.SparseBooleanArray r14 = com.android.server.backup.KeyValueBackupJob.sScheduledForUserId     // Catch: java.lang.Throwable -> Lbf
            r15 = 1
            r14.put(r1, r15)     // Catch: java.lang.Throwable -> Lbf
            android.util.SparseLongArray r14 = com.android.server.backup.KeyValueBackupJob.sNextScheduledForUserId     // Catch: java.lang.Throwable -> Lbf
            long r15 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lbf
            r17 = r3
            long r3 = r15 + r8
            r14.put(r1, r3)     // Catch: java.lang.Throwable -> Lbf
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lbf
            return
        Lab:
            r0 = move-exception
            r13 = r20
            goto Lbd
        Laf:
            r0 = move-exception
            r13 = r20
        Lb2:
            monitor-exit(r23)     // Catch: java.lang.Throwable -> Lb6
            throw r0     // Catch: java.lang.Throwable -> Lb4
        Lb4:
            r0 = move-exception
            goto Lbb
        Lb6:
            r0 = move-exception
            goto Lb2
        Lb8:
            r0 = move-exception
            r13 = r20
        Lbb:
            r8 = r21
        Lbd:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lbf
            throw r0
        Lbf:
            r0 = move-exception
            goto Lbd
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.KeyValueBackupJob.schedule(int, android.content.Context, long, com.android.server.backup.BackupManagerConstants):void");
    }

    public static void cancel(int userId, Context ctx) {
        synchronized (KeyValueBackupJob.class) {
            JobScheduler js = (JobScheduler) ctx.getSystemService("jobscheduler");
            js.cancel(getJobIdForUserId(userId));
            clearScheduledForUserId(userId);
        }
    }

    public static long nextScheduled(int userId) {
        long j;
        synchronized (KeyValueBackupJob.class) {
            j = sNextScheduledForUserId.get(userId);
        }
        return j;
    }

    public static boolean isScheduled(int userId) {
        boolean z;
        synchronized (KeyValueBackupJob.class) {
            z = sScheduledForUserId.get(userId);
        }
        return z;
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters params) {
        int userId = params.getTransientExtras().getInt(USER_ID_EXTRA_KEY);
        synchronized (KeyValueBackupJob.class) {
            clearScheduledForUserId(userId);
        }
        BackupManagerService service = BackupManagerService.getInstance();
        try {
            service.backupNowForUser(userId);
            return false;
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters params) {
        return false;
    }

    private static void clearScheduledForUserId(int userId) {
        sScheduledForUserId.delete(userId);
        sNextScheduledForUserId.delete(userId);
    }

    private static int getJobIdForUserId(int userId) {
        return JobIdManager.getJobIdForUserId(MIN_JOB_ID, 52418896, userId);
    }
}
