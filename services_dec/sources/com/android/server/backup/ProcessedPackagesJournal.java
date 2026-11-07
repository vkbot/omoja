package com.android.server.backup;

import android.util.Slog;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class ProcessedPackagesJournal {
    private static final boolean DEBUG = true;
    private static final String JOURNAL_FILE_NAME = "processed";
    private static final String TAG = "ProcessedPackagesJournal";
    private final Set<String> mProcessedPackages = new HashSet();
    private final File mStateDirectory;

    ProcessedPackagesJournal(File stateDirectory) {
        this.mStateDirectory = stateDirectory;
    }

    void init() {
        synchronized (this.mProcessedPackages) {
            loadFromDisk();
        }
    }

    boolean hasBeenProcessed(String packageName) {
        boolean zContains;
        synchronized (this.mProcessedPackages) {
            zContains = this.mProcessedPackages.contains(packageName);
        }
        return zContains;
    }

    void addPackage(String packageName) {
        synchronized (this.mProcessedPackages) {
            if (!this.mProcessedPackages.add(packageName)) {
                return;
            }
            File journalFile = new File(this.mStateDirectory, JOURNAL_FILE_NAME);
            try {
                RandomAccessFile out = new RandomAccessFile(journalFile, "rws");
                try {
                    out.seek(out.length());
                    out.writeUTF(packageName);
                    out.close();
                } catch (Throwable th) {
                    try {
                        out.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                Slog.e(TAG, "Can't log backup of " + packageName + " to " + journalFile);
            }
        }
    }

    Set<String> getPackagesCopy() {
        HashSet hashSet;
        synchronized (this.mProcessedPackages) {
            hashSet = new HashSet(this.mProcessedPackages);
        }
        return hashSet;
    }

    void reset() {
        synchronized (this.mProcessedPackages) {
            this.mProcessedPackages.clear();
            File journalFile = new File(this.mStateDirectory, JOURNAL_FILE_NAME);
            journalFile.delete();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0041 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadFromDisk() {
        /*
            r6 = this;
            java.lang.String r0 = "ProcessedPackagesJournal"
            java.io.File r1 = new java.io.File
            java.io.File r2 = r6.mStateDirectory
            java.lang.String r3 = "processed"
            r1.<init>(r2, r3)
            boolean r2 = r1.exists()
            if (r2 != 0) goto L13
            return
        L13:
            java.io.DataInputStream r2 = new java.io.DataInputStream     // Catch: java.io.IOException -> L4b java.io.EOFException -> L52
            java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: java.io.IOException -> L4b java.io.EOFException -> L52
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.io.IOException -> L4b java.io.EOFException -> L52
            r4.<init>(r1)     // Catch: java.io.IOException -> L4b java.io.EOFException -> L52
            r3.<init>(r4)     // Catch: java.io.IOException -> L4b java.io.EOFException -> L52
            r2.<init>(r3)     // Catch: java.io.IOException -> L4b java.io.EOFException -> L52
        L22:
            java.lang.String r3 = r2.readUTF()     // Catch: java.lang.Throwable -> L41
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41
            r4.<init>()     // Catch: java.lang.Throwable -> L41
            java.lang.String r5 = "   + "
            r4.append(r5)     // Catch: java.lang.Throwable -> L41
            r4.append(r3)     // Catch: java.lang.Throwable -> L41
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L41
            android.util.Slog.v(r0, r4)     // Catch: java.lang.Throwable -> L41
            java.util.Set<java.lang.String> r4 = r6.mProcessedPackages     // Catch: java.lang.Throwable -> L41
            r4.add(r3)     // Catch: java.lang.Throwable -> L41
            goto L22
        L41:
            r3 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> L46
            goto L4a
        L46:
            r4 = move-exception
            r3.addSuppressed(r4)     // Catch: java.io.IOException -> L4b java.io.EOFException -> L52
        L4a:
            throw r3     // Catch: java.io.IOException -> L4b java.io.EOFException -> L52
        L4b:
            r2 = move-exception
            java.lang.String r3 = "Error reading processed packages journal"
            android.util.Slog.e(r0, r3, r2)
            goto L54
        L52:
            r0 = move-exception
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.ProcessedPackagesJournal.loadFromDisk():void");
    }
}
