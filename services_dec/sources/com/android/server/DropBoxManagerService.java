package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.DropBoxManager;
import android.os.FileUtils;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.StatFs;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.format.TimeMigrationUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.os.IDropBoxManagerService;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.ObjectUtils;
import com.android.server.job.controllers.JobStatus;
import com.android.server.pm.PackageManagerService;
import com.android.server.utils.PriorityDump;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.zip.GZIPOutputStream;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public final class DropBoxManagerService extends SystemService {
    private static final int DEFAULT_AGE_SECONDS = 259200;
    private static final int DEFAULT_MAX_FILES = 1000;
    private static final int DEFAULT_MAX_FILES_LOWRAM = 300;
    private static final int DEFAULT_QUOTA_KB = 5120;
    private static final int DEFAULT_QUOTA_PERCENT = 10;
    private static final int DEFAULT_RESERVE_PERCENT = 10;
    private static final boolean PROFILE_DUMP = false;
    private static final int PROTO_MAX_DATA_BYTES = 262144;
    private static final int QUOTA_RESCAN_MILLIS = 5000;
    private static final String TAG = "DropBoxManagerService";
    private FileList mAllFiles;
    private int mBlockSize;
    private volatile boolean mBooted;
    private int mCachedQuotaBlocks;
    private long mCachedQuotaUptimeMillis;
    private final ContentResolver mContentResolver;
    private final File mDropBoxDir;
    private ArrayMap<String, FileList> mFilesByTag;
    private final DropBoxManagerBroadcastHandler mHandler;
    private long mLowPriorityRateLimitPeriod;
    private ArraySet<String> mLowPriorityTags;
    private int mMaxFiles;
    private final BroadcastReceiver mReceiver;
    private StatFs mStatFs;
    private final IDropBoxManagerService.Stub mStub;

    private class ShellCmd extends ShellCommand {
        private ShellCmd() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:8:0x0017  */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public int onCommand(String cmd) {
            if (cmd == null) {
                return handleDefaultCommands(cmd);
            }
            PrintWriter pw = getOutPrintWriter();
            byte b = -1;
            try {
                switch (cmd.hashCode()) {
                    case -1412652367:
                        if (cmd.equals("restore-defaults")) {
                            b = 3;
                        }
                        break;
                    case -529247831:
                        if (cmd.equals("add-low-priority")) {
                            b = 1;
                        }
                        break;
                    case -444925274:
                        if (cmd.equals("remove-low-priority")) {
                            b = 2;
                        }
                        break;
                    case 1936917209:
                        if (cmd.equals("set-rate-limit")) {
                            b = 0;
                        }
                        break;
                    default:
                        break;
                }
                if (b == 0) {
                    String addedTag = getNextArgRequired();
                    long period = Long.parseLong(addedTag);
                    DropBoxManagerService.this.setLowPriorityRateLimit(period);
                } else if (b == 1) {
                    String addedTag2 = getNextArgRequired();
                    DropBoxManagerService.this.addLowPriorityTag(addedTag2);
                } else if (b == 2) {
                    String removeTag = getNextArgRequired();
                    DropBoxManagerService.this.removeLowPriorityTag(removeTag);
                } else if (b == 3) {
                    DropBoxManagerService.this.restoreDefaults();
                } else {
                    return handleDefaultCommands(cmd);
                }
            } catch (Exception e) {
                pw.println(e);
            }
            return 0;
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            pw.println("Dropbox manager service commands:");
            pw.println("  help");
            pw.println("    Print this help text.");
            pw.println("  set-rate-limit PERIOD");
            pw.println("    Sets low priority broadcast rate limit period to PERIOD ms");
            pw.println("  add-low-priority TAG");
            pw.println("    Add TAG to dropbox low priority list");
            pw.println("  remove-low-priority TAG");
            pw.println("    Remove TAG from dropbox low priority list");
            pw.println("  restore-defaults");
            pw.println("    restore dropbox settings to defaults");
        }
    }

    private class DropBoxManagerBroadcastHandler extends Handler {
        static final int MSG_SEND_BROADCAST = 1;
        static final int MSG_SEND_DEFERRED_BROADCAST = 2;
        private final ArrayMap<String, Intent> mDeferredMap;
        private final Object mLock;

        DropBoxManagerBroadcastHandler(Looper looper) {
            super(looper);
            this.mLock = new Object();
            this.mDeferredMap = new ArrayMap<>();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Intent deferredIntent;
            int i = msg.what;
            if (i == 1) {
                prepareAndSendBroadcast((Intent) msg.obj);
                return;
            }
            if (i == 2) {
                synchronized (this.mLock) {
                    deferredIntent = this.mDeferredMap.remove((String) msg.obj);
                }
                if (deferredIntent != null) {
                    prepareAndSendBroadcast(deferredIntent);
                }
            }
        }

        private void prepareAndSendBroadcast(Intent intent) {
            if (!DropBoxManagerService.this.mBooted) {
                intent.addFlags(1073741824);
            }
            DropBoxManagerService.this.getContext().sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.READ_LOGS");
        }

        private Intent createIntent(String tag, long time) {
            Intent dropboxIntent = new Intent("android.intent.action.DROPBOX_ENTRY_ADDED");
            dropboxIntent.putExtra("tag", tag);
            dropboxIntent.putExtra("time", time);
            return dropboxIntent;
        }

        public void sendBroadcast(String tag, long time) {
            sendMessage(obtainMessage(1, createIntent(tag, time)));
        }

        public void maybeDeferBroadcast(String tag, long time) {
            synchronized (this.mLock) {
                Intent intent = this.mDeferredMap.get(tag);
                if (intent == null) {
                    this.mDeferredMap.put(tag, createIntent(tag, time));
                    sendMessageDelayed(obtainMessage(2, tag), DropBoxManagerService.this.mLowPriorityRateLimitPeriod);
                } else {
                    intent.putExtra("time", time);
                    int dropped = intent.getIntExtra("android.os.extra.DROPPED_COUNT", 0);
                    intent.putExtra("android.os.extra.DROPPED_COUNT", dropped + 1);
                }
            }
        }
    }

    public DropBoxManagerService(Context context) {
        this(context, new File("/data/system/dropbox"), FgThread.get().getLooper());
    }

    public DropBoxManagerService(Context context, File path, Looper looper) {
        super(context);
        this.mAllFiles = null;
        this.mFilesByTag = null;
        this.mLowPriorityRateLimitPeriod = 0L;
        this.mLowPriorityTags = null;
        this.mStatFs = null;
        this.mBlockSize = 0;
        this.mCachedQuotaBlocks = 0;
        this.mCachedQuotaUptimeMillis = 0L;
        this.mBooted = false;
        this.mMaxFiles = -1;
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.server.DropBoxManagerService.1
            /* JADX WARN: Type inference failed for: r0v1, types: [com.android.server.DropBoxManagerService$1$1] */
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                DropBoxManagerService.this.mCachedQuotaUptimeMillis = 0L;
                new Thread() { // from class: com.android.server.DropBoxManagerService.1.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            DropBoxManagerService.this.init();
                            DropBoxManagerService.this.trimToFit();
                        } catch (IOException e) {
                            Slog.e(DropBoxManagerService.TAG, "Can't init", e);
                        }
                    }
                }.start();
            }
        };
        this.mStub = new IDropBoxManagerService.Stub() { // from class: com.android.server.DropBoxManagerService.2
            public void add(DropBoxManager.Entry entry) throws Throwable {
                DropBoxManagerService.this.add(entry);
            }

            public boolean isTagEnabled(String tag) {
                return DropBoxManagerService.this.isTagEnabled(tag);
            }

            public DropBoxManager.Entry getNextEntry(String tag, long millis, String callingPackage) {
                return DropBoxManagerService.this.getNextEntry(tag, millis, callingPackage);
            }

            public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
                DropBoxManagerService.this.dump(fd, pw, args);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
                new ShellCmd().exec(this, in, out, err, args, callback, resultReceiver);
            }
        };
        this.mDropBoxDir = path;
        this.mContentResolver = getContext().getContentResolver();
        this.mHandler = new DropBoxManagerBroadcastHandler(looper);
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("dropbox", this.mStub);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase != 500) {
            if (phase == 1000) {
                this.mBooted = true;
            }
        } else {
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
            getContext().registerReceiver(this.mReceiver, filter);
            this.mContentResolver.registerContentObserver(Settings.Global.CONTENT_URI, true, new ContentObserver(new Handler()) { // from class: com.android.server.DropBoxManagerService.3
                @Override // android.database.ContentObserver
                public void onChange(boolean selfChange) {
                    DropBoxManagerService.this.mReceiver.onReceive(DropBoxManagerService.this.getContext(), (Intent) null);
                }
            });
            getLowPriorityResourceConfigs();
        }
    }

    public IDropBoxManagerService getServiceStub() {
        return this.mStub;
    }

    /* JADX WARN: Code duplicated, block: B:90:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0182: MOVE (r3 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY] A[D('temp' java.io.File)]), block:B:62:0x0182 */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0186: MOVE (r3 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY] A[D('temp' java.io.File)]), block:B:64:0x0186 */
    public void add(DropBoxManager.Entry entry) throws Throwable {
        File temp;
        File temp2;
        long max;
        long lastTrim;
        File temp3 = null;
        InputStream input = null;
        String tag = entry.getTag();
        try {
            try {
                int flags = entry.getFlags();
                Slog.i(TAG, "add tag=" + tag + " isTagEnabled=" + isTagEnabled(tag) + " flags=0x" + Integer.toHexString(flags));
                try {
                    if ((flags & 1) != 0) {
                        throw new IllegalArgumentException();
                    }
                    init();
                    if (!isTagEnabled(tag)) {
                        IoUtils.closeQuietly((AutoCloseable) null);
                        IoUtils.closeQuietly((AutoCloseable) null);
                        entry.close();
                        if (0 != 0) {
                            temp3.delete();
                            return;
                        }
                        return;
                    }
                    long max2 = trimToFit();
                    long max3 = System.currentTimeMillis();
                    byte[] buffer = new byte[this.mBlockSize];
                    input = entry.getInputStream();
                    int read = 0;
                    while (read < buffer.length) {
                        try {
                            int n = input.read(buffer, read, buffer.length - read);
                            if (n <= 0) {
                                break;
                            } else {
                                read += n;
                            }
                        } catch (IOException e) {
                            e = e;
                            Slog.e(TAG, "Can't write: " + tag, e);
                            IoUtils.closeQuietly((AutoCloseable) null);
                            IoUtils.closeQuietly(input);
                            entry.close();
                            if (temp3 == null) {
                                return;
                            }
                        }
                    }
                    File file = this.mDropBoxDir;
                    StringBuilder sb = new StringBuilder();
                    sb.append("drop");
                    long max4 = max2;
                    long max5 = Thread.currentThread().getId();
                    sb.append(max5);
                    sb.append(".tmp");
                    File temp4 = new File(file, sb.toString());
                    int bufferSize = this.mBlockSize;
                    if (bufferSize > 4096) {
                        bufferSize = 4096;
                    }
                    if (bufferSize < 512) {
                        bufferSize = 512;
                    }
                    FileOutputStream foutput = new FileOutputStream(temp4);
                    OutputStream output = new BufferedOutputStream(foutput, bufferSize);
                    if (read == buffer.length && (flags & 4) == 0) {
                        output = new GZIPOutputStream(output);
                        flags |= 4;
                    }
                    while (true) {
                        output.write(buffer, 0, read);
                        long now = System.currentTimeMillis();
                        if (now - max3 > 30000) {
                            long max6 = trimToFit();
                            lastTrim = max6;
                            max = now;
                        } else {
                            max = max3;
                            lastTrim = max4;
                        }
                        read = input.read(buffer);
                        if (read <= 0) {
                            FileUtils.sync(foutput);
                            output.close();
                            output = null;
                        } else {
                            output.flush();
                        }
                        long len = temp4.length();
                        if (len > lastTrim) {
                            Slog.w(TAG, "Dropping: " + tag + " (" + temp4.length() + " > " + lastTrim + " bytes)");
                            temp4.delete();
                            temp4 = null;
                            break;
                        }
                        int bufferSize2 = bufferSize;
                        FileOutputStream foutput2 = foutput;
                        if (read <= 0) {
                            break;
                        }
                        max4 = lastTrim;
                        max3 = max;
                        bufferSize = bufferSize2;
                        foutput = foutput2;
                    }
                    long time = createEntry(temp4, tag, flags);
                    temp3 = null;
                    if (this.mLowPriorityTags == null || !this.mLowPriorityTags.contains(tag)) {
                        this.mHandler.sendBroadcast(tag, time);
                    } else {
                        this.mHandler.maybeDeferBroadcast(tag, time);
                    }
                    IoUtils.closeQuietly(output);
                    IoUtils.closeQuietly(input);
                    entry.close();
                    if (0 == 0) {
                        return;
                    }
                    temp3.delete();
                } catch (IOException e2) {
                    e = e2;
                    temp3 = temp2;
                } catch (Throwable th) {
                    th = th;
                    temp3 = temp;
                    IoUtils.closeQuietly((AutoCloseable) null);
                    IoUtils.closeQuietly(input);
                    entry.close();
                    if (temp3 != null) {
                        temp3.delete();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            e = e3;
        } catch (Throwable th3) {
            th = th3;
        }
        Slog.e(TAG, "Can't write: " + tag, e);
        IoUtils.closeQuietly((AutoCloseable) null);
        IoUtils.closeQuietly(input);
        entry.close();
        if (temp3 == null) {
            return;
        }
        temp3.delete();
    }

    public boolean isTagEnabled(String tag) {
        long token = Binder.clearCallingIdentity();
        try {
            return !"disabled".equals(Settings.Global.getString(this.mContentResolver, "dropbox:" + tag));
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private boolean checkPermission(int callingUid, String callingPackage) {
        if (getContext().checkCallingPermission("android.permission.PEEK_DROPBOX_DATA") == 0) {
            return true;
        }
        getContext().enforceCallingOrSelfPermission("android.permission.READ_LOGS", TAG);
        int iNoteOp = ((AppOpsManager) getContext().getSystemService(AppOpsManager.class)).noteOp(43, callingUid, callingPackage);
        if (iNoteOp == 0) {
            return true;
        }
        if (iNoteOp == 3) {
            getContext().enforceCallingOrSelfPermission("android.permission.PACKAGE_USAGE_STATS", TAG);
            return true;
        }
        return false;
    }

    public synchronized DropBoxManager.Entry getNextEntry(String tag, long millis, String callingPackage) throws IOException {
        try {
            if (!checkPermission(Binder.getCallingUid(), callingPackage)) {
                return null;
            }
            try {
                init();
                FileList list = tag == null ? this.mAllFiles : this.mFilesByTag.get(tag);
                if (list == null) {
                    return null;
                }
                for (EntryFile entry : list.contents.tailSet(new EntryFile(millis + 1))) {
                    if (entry.tag != null) {
                        if ((entry.flags & 1) != 0) {
                            return new DropBoxManager.Entry(entry.tag, entry.timestampMillis);
                        }
                        File file = entry.getFile(this.mDropBoxDir);
                        try {
                            return new DropBoxManager.Entry(entry.tag, entry.timestampMillis, file, entry.flags);
                        } catch (IOException e) {
                            Slog.wtf(TAG, "Can't read: " + file, e);
                        }
                    }
                }
                return null;
            } catch (IOException e2) {
                Slog.e(TAG, "Can't init", e2);
                return null;
            }
        } catch (Throwable e3) {
            throw e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setLowPriorityRateLimit(long period) {
        this.mLowPriorityRateLimitPeriod = period;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void addLowPriorityTag(String tag) {
        this.mLowPriorityTags.add(tag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void removeLowPriorityTag(String tag) {
        this.mLowPriorityTags.remove(tag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void restoreDefaults() {
        getLowPriorityResourceConfigs();
    }

    /* JADX WARN: Code duplicated, block: B:182:0x0363 A[Catch: all -> 0x03ca, TRY_ENTER, TRY_LEAVE, TryCatch #5 {, blocks: (B:4:0x0007, B:8:0x0015, B:9:0x0019, B:11:0x0031, B:13:0x0034, B:15:0x003e, B:18:0x004a, B:20:0x0054, B:23:0x005f, B:26:0x006b, B:28:0x0075, B:31:0x0080, B:33:0x008a, B:34:0x009a, B:35:0x00a0, B:43:0x00d0, B:47:0x00d7, B:49:0x011f, B:50:0x0128, B:52:0x012e, B:53:0x013d, B:54:0x0142, B:55:0x0150, B:57:0x0156, B:60:0x0163, B:62:0x0167, B:63:0x016c, B:67:0x0184, B:69:0x0190, B:70:0x019d, B:72:0x01a5, B:73:0x01b2, B:75:0x01bd, B:76:0x01c2, B:80:0x01ce, B:83:0x01ea, B:88:0x0203, B:190:0x0372, B:140:0x02c5, B:142:0x02ca, B:182:0x0363, B:184:0x0368, B:187:0x036d, B:171:0x034f, B:173:0x0354, B:86:0x01f2, B:87:0x01f7, B:66:0x0182, B:195:0x0389, B:197:0x0390, B:202:0x039f, B:200:0x0395, B:201:0x039a, B:207:0x03ad), top: B:217:0x0007, inners: #11 }] */
    /* JADX WARN: Code duplicated, block: B:218:0x0368 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:? A[Catch: all -> 0x03ca, SYNTHETIC, TRY_ENTER, TryCatch #5 {, blocks: (B:4:0x0007, B:8:0x0015, B:9:0x0019, B:11:0x0031, B:13:0x0034, B:15:0x003e, B:18:0x004a, B:20:0x0054, B:23:0x005f, B:26:0x006b, B:28:0x0075, B:31:0x0080, B:33:0x008a, B:34:0x009a, B:35:0x00a0, B:43:0x00d0, B:47:0x00d7, B:49:0x011f, B:50:0x0128, B:52:0x012e, B:53:0x013d, B:54:0x0142, B:55:0x0150, B:57:0x0156, B:60:0x0163, B:62:0x0167, B:63:0x016c, B:67:0x0184, B:69:0x0190, B:70:0x019d, B:72:0x01a5, B:73:0x01b2, B:75:0x01bd, B:76:0x01c2, B:80:0x01ce, B:83:0x01ea, B:88:0x0203, B:190:0x0372, B:140:0x02c5, B:142:0x02ca, B:182:0x0363, B:184:0x0368, B:187:0x036d, B:171:0x034f, B:173:0x0354, B:86:0x01f2, B:87:0x01f7, B:66:0x0182, B:195:0x0389, B:197:0x0390, B:202:0x039f, B:200:0x0395, B:201:0x039a, B:207:0x03ad), top: B:217:0x0007, inners: #11 }] */
    public synchronized void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        ArrayList<String> searchArgs;
        boolean dumpProto;
        boolean doFile;
        Throwable th;
        File file;
        int i;
        if (DumpUtils.checkDumpAndUsageStatsPermission(getContext(), TAG, pw)) {
            try {
                init();
                StringBuilder out = new StringBuilder();
                ArrayList<String> searchArgs2 = new ArrayList<>();
                boolean doFile2 = false;
                boolean dumpProto2 = false;
                boolean doFile3 = false;
                for (int i2 = 0; args != null && i2 < args.length; i2++) {
                    if (args[i2].equals("-p") || args[i2].equals("--print")) {
                        doFile2 = true;
                    } else if (args[i2].equals("-f") || args[i2].equals("--file")) {
                        doFile3 = true;
                    } else {
                        if (!args[i2].equals(PriorityDump.PROTO_ARG)) {
                            if (!args[i2].equals("-h") && !args[i2].equals("--help")) {
                                if (args[i2].startsWith("-")) {
                                    out.append("Unknown argument: ");
                                    out.append(args[i2]);
                                    out.append("\n");
                                } else {
                                    searchArgs2.add(args[i2]);
                                }
                            }
                            pw.println("Dropbox (dropbox) dump options:");
                            pw.println("  [-h|--help] [-p|--print] [-f|--file] [timestamp]");
                            pw.println("    -h|--help: print this help");
                            pw.println("    -p|--print: print full contents of each entry");
                            pw.println("    -f|--file: print path of each entry's file");
                            pw.println("    --proto: dump data to proto");
                            pw.println("  [timestamp] optionally filters to only those entries.");
                            return;
                        }
                        dumpProto2 = true;
                    }
                }
                if (dumpProto2) {
                    dumpProtoLocked(fd, searchArgs2);
                    return;
                }
                out.append("Drop box contents: ");
                out.append(this.mAllFiles.contents.size());
                out.append(" entries\n");
                out.append("Max entries: ");
                out.append(this.mMaxFiles);
                out.append("\n");
                out.append("Low priority rate limit period: ");
                out.append(this.mLowPriorityRateLimitPeriod);
                out.append(" ms\n");
                out.append("Low priority tags: ");
                out.append(this.mLowPriorityTags);
                out.append("\n");
                if (!searchArgs2.isEmpty()) {
                    out.append("Searching for:");
                    for (String a : searchArgs2) {
                        out.append(" ");
                        out.append(a);
                    }
                    out.append("\n");
                }
                int numFound = 0;
                out.append("\n");
                for (EntryFile entry : this.mAllFiles.contents) {
                    if (matchEntry(entry, searchArgs2)) {
                        int numFound2 = numFound + 1;
                        if (doFile2) {
                            out.append("========================================\n");
                        }
                        String date = TimeMigrationUtils.formatMillisWithFixedFormat(entry.timestampMillis);
                        out.append(date);
                        out.append(" ");
                        out.append(entry.tag == null ? "(no tag)" : entry.tag);
                        File file2 = entry.getFile(this.mDropBoxDir);
                        if (file2 == null) {
                            out.append(" (no file)\n");
                            doFile = doFile3;
                            searchArgs = searchArgs2;
                            dumpProto = dumpProto2;
                        } else {
                            boolean z = true;
                            if ((entry.flags & 1) != 0) {
                                out.append(" (contents lost)\n");
                                doFile = doFile3;
                                searchArgs = searchArgs2;
                                dumpProto = dumpProto2;
                            } else {
                                out.append(" (");
                                if ((entry.flags & 4) != 0) {
                                    out.append("compressed ");
                                }
                                out.append((entry.flags & 2) != 0 ? "text" : "data");
                                out.append(", ");
                                searchArgs = searchArgs2;
                                dumpProto = dumpProto2;
                                out.append(file2.length());
                                out.append(" bytes)\n");
                                if (doFile3 || (doFile2 && (entry.flags & 2) == 0)) {
                                    if (!doFile2) {
                                        out.append("    ");
                                    }
                                    out.append(file2.getPath());
                                    out.append("\n");
                                }
                                if ((entry.flags & 2) == 0) {
                                    doFile = doFile3;
                                } else if (doFile2 || !doFile3) {
                                    DropBoxManager.Entry dbe = null;
                                    InputStreamReader isr = null;
                                    try {
                                        doFile = doFile3;
                                        try {
                                            try {
                                                file = file2;
                                                try {
                                                    dbe = new DropBoxManager.Entry(entry.tag, entry.timestampMillis, file, entry.flags);
                                                    int i3 = 0;
                                                    if (doFile2) {
                                                        try {
                                                            isr = new InputStreamReader(dbe.getInputStream());
                                                            try {
                                                                char[] buf = new char[4096];
                                                                boolean newline = false;
                                                                while (true) {
                                                                    int n = isr.read(buf);
                                                                    if (n <= 0) {
                                                                        break;
                                                                    }
                                                                    out.append(buf, i3, n);
                                                                    newline = buf[n + (-1)] == '\n';
                                                                    if (out.length() > 65536) {
                                                                        pw.write(out.toString());
                                                                        i = 0;
                                                                        out.setLength(0);
                                                                    } else {
                                                                        i = 0;
                                                                    }
                                                                    i3 = i;
                                                                }
                                                                if (!newline) {
                                                                    out.append("\n");
                                                                }
                                                            } catch (IOException e) {
                                                                e = e;
                                                                try {
                                                                    out.append("*** ");
                                                                    out.append(e.toString());
                                                                    out.append("\n");
                                                                    StringBuilder sb = new StringBuilder();
                                                                    sb.append("Can't read: ");
                                                                    try {
                                                                        sb.append(file);
                                                                        Slog.e(TAG, sb.toString(), e);
                                                                        if (dbe != null) {
                                                                            dbe.close();
                                                                        }
                                                                        if (isr != null) {
                                                                            try {
                                                                                isr.close();
                                                                            } catch (IOException e2) {
                                                                            }
                                                                        }
                                                                    } catch (Throwable th2) {
                                                                        th = th2;
                                                                        if (dbe != null) {
                                                                            dbe.close();
                                                                        }
                                                                        if (isr != null) {
                                                                            throw th;
                                                                        }
                                                                        try {
                                                                            isr.close();
                                                                            throw th;
                                                                        } catch (IOException e3) {
                                                                            throw th;
                                                                        }
                                                                    }
                                                                } catch (Throwable th3) {
                                                                    th = th3;
                                                                }
                                                            } catch (Throwable th4) {
                                                                th = th4;
                                                                if (dbe != null) {
                                                                    dbe.close();
                                                                }
                                                                if (isr != null) {
                                                                    throw th;
                                                                }
                                                                isr.close();
                                                                throw th;
                                                            }
                                                        } catch (IOException e4) {
                                                            e = e4;
                                                            isr = null;
                                                        } catch (Throwable th5) {
                                                            th = th5;
                                                            isr = null;
                                                        }
                                                    } else {
                                                        String text = dbe.getText(70);
                                                        out.append("    ");
                                                        if (text == null) {
                                                            out.append("[null]");
                                                        } else {
                                                            if (text.length() != 70) {
                                                                z = false;
                                                            }
                                                            boolean truncated = z;
                                                            out.append(text.trim().replace('\n', '/'));
                                                            if (truncated) {
                                                                out.append(" ...");
                                                            }
                                                        }
                                                        out.append("\n");
                                                        isr = null;
                                                    }
                                                    dbe.close();
                                                    if (isr != null) {
                                                        try {
                                                            isr.close();
                                                        } catch (IOException e5) {
                                                        }
                                                    }
                                                } catch (IOException e6) {
                                                    e = e6;
                                                    dbe = null;
                                                    isr = null;
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                    dbe = null;
                                                    isr = null;
                                                }
                                            } catch (IOException e7) {
                                                e = e7;
                                                file = file2;
                                                dbe = null;
                                                isr = null;
                                            } catch (Throwable th7) {
                                                th = th7;
                                                dbe = null;
                                                isr = null;
                                            }
                                        } catch (IOException e8) {
                                            e = e8;
                                            file = file2;
                                            dbe = null;
                                        } catch (Throwable th8) {
                                            th = th8;
                                            dbe = null;
                                        }
                                    } catch (IOException e9) {
                                        e = e9;
                                        doFile = doFile3;
                                        file = file2;
                                    } catch (Throwable th9) {
                                        th = th9;
                                    }
                                } else {
                                    doFile = doFile3;
                                }
                                if (doFile2) {
                                    out.append("\n");
                                }
                            }
                        }
                        numFound = numFound2;
                        searchArgs2 = searchArgs;
                        dumpProto2 = dumpProto;
                        doFile3 = doFile;
                    }
                }
                if (numFound == 0) {
                    out.append("(No entries found.)\n");
                }
                if (args == null || args.length == 0) {
                    if (!doFile2) {
                        out.append("\n");
                    }
                    out.append("Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n");
                }
                pw.write(out.toString());
            } catch (IOException e10) {
                pw.println("Can't initialize: " + e10);
                Slog.e(TAG, "Can't init", e10);
            }
        }
    }

    private boolean matchEntry(EntryFile entry, ArrayList<String> searchArgs) {
        String date = TimeMigrationUtils.formatMillisWithFixedFormat(entry.timestampMillis);
        boolean match = true;
        int numArgs = searchArgs.size();
        for (int i = 0; i < numArgs && match; i++) {
            String arg = searchArgs.get(i);
            match = date.contains(arg) || arg.equals(entry.tag);
        }
        return match;
    }

    private void dumpProtoLocked(FileDescriptor fd, ArrayList<String> searchArgs) {
        DropBoxManagerService dropBoxManagerService = this;
        ProtoOutputStream proto = new ProtoOutputStream(fd);
        for (EntryFile entry : dropBoxManagerService.mAllFiles.contents) {
            if (dropBoxManagerService.matchEntry(entry, searchArgs)) {
                File file = entry.getFile(dropBoxManagerService.mDropBoxDir);
                if (file == null) {
                    dropBoxManagerService = this;
                } else if ((entry.flags & 1) != 0) {
                    continue;
                } else {
                    long bToken = proto.start(2246267895809L);
                    proto.write(1112396529665L, entry.timestampMillis);
                    try {
                        DropBoxManager.Entry dbe = new DropBoxManager.Entry(entry.tag, entry.timestampMillis, file, entry.flags);
                        try {
                            InputStream is = dbe.getInputStream();
                            if (is != null) {
                                try {
                                    byte[] buf = new byte[262144];
                                    int readBytes = 0;
                                    int n = 0;
                                    while (n >= 0) {
                                        int i = readBytes + n;
                                        readBytes = i;
                                        if (i >= 262144) {
                                            break;
                                        } else {
                                            n = is.read(buf, readBytes, 262144 - readBytes);
                                        }
                                    }
                                    proto.write(1151051235330L, Arrays.copyOf(buf, readBytes));
                                } catch (Throwable th) {
                                    if (is != null) {
                                        try {
                                            is.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                    }
                                    throw th;
                                }
                            }
                            if (is != null) {
                                is.close();
                            }
                            dbe.close();
                        } catch (Throwable th3) {
                            try {
                                dbe.close();
                                throw th3;
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                                throw th3;
                            }
                        }
                    } catch (IOException e) {
                        Slog.e(TAG, "Can't read: " + file, e);
                    }
                    proto.end(bToken);
                    dropBoxManagerService = this;
                }
            }
        }
        proto.flush();
    }

    private static final class FileList implements Comparable<FileList> {
        public int blocks;
        public final TreeSet<EntryFile> contents;

        private FileList() {
            this.blocks = 0;
            this.contents = new TreeSet<>();
        }

        @Override // java.lang.Comparable
        public final int compareTo(FileList o) {
            int i = this.blocks;
            int i2 = o.blocks;
            if (i != i2) {
                return i2 - i;
            }
            if (this == o) {
                return 0;
            }
            if (hashCode() < o.hashCode()) {
                return -1;
            }
            return hashCode() > o.hashCode() ? 1 : 0;
        }
    }

    static final class EntryFile implements Comparable<EntryFile> {
        public final int blocks;
        public final int flags;
        public final String tag;
        public final long timestampMillis;

        @Override // java.lang.Comparable
        public final int compareTo(EntryFile o) {
            int comp = Long.compare(this.timestampMillis, o.timestampMillis);
            if (comp != 0) {
                return comp;
            }
            int comp2 = ObjectUtils.compare(this.tag, o.tag);
            if (comp2 != 0) {
                return comp2;
            }
            int comp3 = Integer.compare(this.flags, o.flags);
            return comp3 != 0 ? comp3 : Integer.compare(hashCode(), o.hashCode());
        }

        public EntryFile(File temp, File dir, String tag, long timestampMillis, int flags, int blockSize) throws IOException {
            if ((flags & 1) != 0) {
                throw new IllegalArgumentException();
            }
            this.tag = TextUtils.safeIntern(tag);
            this.timestampMillis = timestampMillis;
            this.flags = flags;
            File file = getFile(dir);
            if (!temp.renameTo(file)) {
                throw new IOException("Can't rename " + temp + " to " + file);
            }
            this.blocks = (int) (((file.length() + ((long) blockSize)) - 1) / ((long) blockSize));
        }

        public EntryFile(File dir, String tag, long timestampMillis) throws IOException {
            this.tag = TextUtils.safeIntern(tag);
            this.timestampMillis = timestampMillis;
            this.flags = 1;
            this.blocks = 0;
            new FileOutputStream(getFile(dir)).close();
        }

        public EntryFile(File file, int blockSize) {
            boolean parseFailure = false;
            String name = file.getName();
            int flags = 0;
            String tag = null;
            long millis = 0;
            int at = name.lastIndexOf(64);
            if (at < 0) {
                parseFailure = true;
            } else {
                tag = Uri.decode(name.substring(0, at));
                if (name.endsWith(PackageManagerService.COMPRESSED_EXTENSION)) {
                    flags = 0 | 4;
                    name = name.substring(0, name.length() - 3);
                }
                if (name.endsWith(".lost")) {
                    flags |= 1;
                    name = name.substring(at + 1, name.length() - 5);
                } else if (name.endsWith(".txt")) {
                    flags |= 2;
                    name = name.substring(at + 1, name.length() - 4);
                } else if (name.endsWith(".dat")) {
                    name = name.substring(at + 1, name.length() - 4);
                } else {
                    parseFailure = true;
                }
                if (!parseFailure) {
                    try {
                        millis = Long.parseLong(name);
                    } catch (NumberFormatException e) {
                        parseFailure = true;
                    }
                }
            }
            if (parseFailure) {
                Slog.wtf(DropBoxManagerService.TAG, "Invalid filename: " + file);
                file.delete();
                this.tag = null;
                this.flags = 1;
                this.timestampMillis = 0L;
                this.blocks = 0;
                return;
            }
            this.blocks = (int) (((file.length() + ((long) blockSize)) - 1) / ((long) blockSize));
            this.tag = TextUtils.safeIntern(tag);
            this.flags = flags;
            this.timestampMillis = millis;
        }

        public EntryFile(long millis) {
            this.tag = null;
            this.timestampMillis = millis;
            this.flags = 1;
            this.blocks = 0;
        }

        public boolean hasFile() {
            return this.tag != null;
        }

        private String getExtension() {
            if ((this.flags & 1) != 0) {
                return ".lost";
            }
            StringBuilder sb = new StringBuilder();
            sb.append((this.flags & 2) != 0 ? ".txt" : ".dat");
            sb.append((this.flags & 4) != 0 ? PackageManagerService.COMPRESSED_EXTENSION : "");
            return sb.toString();
        }

        public String getFilename() {
            if (!hasFile()) {
                return null;
            }
            return Uri.encode(this.tag) + "@" + this.timestampMillis + getExtension();
        }

        public File getFile(File dir) {
            if (hasFile()) {
                return new File(dir, getFilename());
            }
            return null;
        }

        public void deleteFile(File dir) {
            if (hasFile()) {
                getFile(dir).delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void init() throws IOException {
        if (this.mStatFs == null) {
            if (!this.mDropBoxDir.isDirectory() && !this.mDropBoxDir.mkdirs()) {
                throw new IOException("Can't mkdir: " + this.mDropBoxDir);
            }
            try {
                StatFs statFs = new StatFs(this.mDropBoxDir.getPath());
                this.mStatFs = statFs;
                this.mBlockSize = statFs.getBlockSize();
            } catch (IllegalArgumentException e) {
                throw new IOException("Can't statfs: " + this.mDropBoxDir);
            }
        }
        if (this.mAllFiles == null) {
            File[] files = this.mDropBoxDir.listFiles();
            if (files == null) {
                throw new IOException("Can't list files: " + this.mDropBoxDir);
            }
            this.mAllFiles = new FileList();
            this.mFilesByTag = new ArrayMap<>();
            for (File file : files) {
                if (file.getName().endsWith(".tmp")) {
                    Slog.i(TAG, "Cleaning temp file: " + file);
                    file.delete();
                } else {
                    EntryFile entry = new EntryFile(file, this.mBlockSize);
                    if (entry.hasFile()) {
                        enrollEntry(entry);
                    }
                }
            }
        }
    }

    private synchronized void enrollEntry(EntryFile entry) {
        this.mAllFiles.contents.add(entry);
        this.mAllFiles.blocks += entry.blocks;
        if (entry.hasFile() && entry.blocks > 0) {
            FileList tagFiles = this.mFilesByTag.get(entry.tag);
            if (tagFiles == null) {
                tagFiles = new FileList();
                this.mFilesByTag.put(TextUtils.safeIntern(entry.tag), tagFiles);
            }
            tagFiles.contents.add(entry);
            tagFiles.blocks += entry.blocks;
        }
    }

    private synchronized long createEntry(File temp, String tag, int flags) throws IOException {
        long t;
        long j;
        t = System.currentTimeMillis();
        SortedSet<EntryFile> tail = this.mAllFiles.contents.tailSet(new EntryFile(JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY + t));
        EntryFile[] future = null;
        if (!tail.isEmpty()) {
            future = (EntryFile[]) tail.toArray(new EntryFile[tail.size()]);
            tail.clear();
        }
        long j2 = 1;
        if (!this.mAllFiles.contents.isEmpty()) {
            t = Math.max(t, this.mAllFiles.contents.last().timestampMillis + 1);
        }
        if (future != null) {
            int length = future.length;
            int i = 0;
            long t2 = t;
            while (i < length) {
                EntryFile late = future[i];
                this.mAllFiles.blocks -= late.blocks;
                FileList tagFiles = this.mFilesByTag.get(late.tag);
                if (tagFiles != null && tagFiles.contents.remove(late)) {
                    tagFiles.blocks -= late.blocks;
                }
                if ((late.flags & 1) == 0) {
                    enrollEntry(new EntryFile(late.getFile(this.mDropBoxDir), this.mDropBoxDir, late.tag, t2, late.flags, this.mBlockSize));
                    t2 += j2;
                    j = 1;
                } else {
                    j = 1;
                    enrollEntry(new EntryFile(this.mDropBoxDir, late.tag, t2));
                    t2++;
                }
                i++;
                j2 = j;
                tail = tail;
            }
            t = t2;
        }
        if (temp == null) {
            enrollEntry(new EntryFile(this.mDropBoxDir, tag, t));
        } else {
            enrollEntry(new EntryFile(temp, this.mDropBoxDir, tag, t, flags, this.mBlockSize));
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized long trimToFit() throws IOException {
        int ageSeconds = Settings.Global.getInt(this.mContentResolver, "dropbox_age_seconds", DEFAULT_AGE_SECONDS);
        this.mMaxFiles = Settings.Global.getInt(this.mContentResolver, "dropbox_max_files", ActivityManager.isLowRamDeviceStatic() ? 300 : 1000);
        long cutoffMillis = System.currentTimeMillis() - ((long) (ageSeconds * 1000));
        while (!this.mAllFiles.contents.isEmpty()) {
            EntryFile entry = this.mAllFiles.contents.first();
            if (entry.timestampMillis > cutoffMillis && this.mAllFiles.contents.size() < this.mMaxFiles) {
                break;
            }
            FileList tag = this.mFilesByTag.get(entry.tag);
            if (tag != null && tag.contents.remove(entry)) {
                tag.blocks -= entry.blocks;
            }
            if (this.mAllFiles.contents.remove(entry)) {
                this.mAllFiles.blocks -= entry.blocks;
            }
            entry.deleteFile(this.mDropBoxDir);
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (uptimeMillis > this.mCachedQuotaUptimeMillis + 5000) {
            int quotaPercent = Settings.Global.getInt(this.mContentResolver, "dropbox_quota_percent", 10);
            int reservePercent = Settings.Global.getInt(this.mContentResolver, "dropbox_reserve_percent", 10);
            int quotaKb = Settings.Global.getInt(this.mContentResolver, "dropbox_quota_kb", DEFAULT_QUOTA_KB);
            String dirPath = this.mDropBoxDir.getPath();
            try {
                this.mStatFs.restat(dirPath);
                long available = this.mStatFs.getAvailableBlocksLong();
                long nonreserved = available - ((this.mStatFs.getBlockCountLong() * ((long) reservePercent)) / 100);
                long maxAvailableLong = (((long) quotaPercent) * nonreserved) / 100;
                int maxAvailable = Math.toIntExact(Math.max(0L, Math.min(maxAvailableLong, 2147483647L)));
                int maximum = (quotaKb * 1024) / this.mBlockSize;
                this.mCachedQuotaBlocks = Math.min(maximum, maxAvailable);
                this.mCachedQuotaUptimeMillis = uptimeMillis;
            } catch (IllegalArgumentException e) {
                throw new IOException("Can't restat: " + this.mDropBoxDir);
            }
        }
        if (this.mAllFiles.blocks > this.mCachedQuotaBlocks) {
            int unsqueezed = this.mAllFiles.blocks;
            TreeSet<FileList> tags = new TreeSet<>(this.mFilesByTag.values());
            int squeezed = 0;
            int squeezed2 = unsqueezed;
            for (FileList tag2 : tags) {
                if (squeezed > 0 && tag2.blocks <= (this.mCachedQuotaBlocks - squeezed2) / squeezed) {
                    break;
                }
                squeezed2 -= tag2.blocks;
                squeezed++;
            }
            int tagQuota = (this.mCachedQuotaBlocks - squeezed2) / squeezed;
            for (FileList tag3 : tags) {
                if (this.mAllFiles.blocks < this.mCachedQuotaBlocks) {
                    break;
                }
                while (tag3.blocks > tagQuota && !tag3.contents.isEmpty()) {
                    EntryFile entry2 = tag3.contents.first();
                    if (tag3.contents.remove(entry2)) {
                        tag3.blocks -= entry2.blocks;
                    }
                    if (this.mAllFiles.contents.remove(entry2)) {
                        this.mAllFiles.blocks -= entry2.blocks;
                    }
                    try {
                        entry2.deleteFile(this.mDropBoxDir);
                        enrollEntry(new EntryFile(this.mDropBoxDir, entry2.tag, entry2.timestampMillis));
                    } catch (IOException e2) {
                        Slog.e(TAG, "Can't write tombstone file", e2);
                    }
                }
            }
        }
        return this.mCachedQuotaBlocks * this.mBlockSize;
    }

    private void getLowPriorityResourceConfigs() {
        this.mLowPriorityRateLimitPeriod = Resources.getSystem().getInteger(R.integer.config_defaultRefreshRateInHbmHdr);
        String[] lowPrioritytags = Resources.getSystem().getStringArray(R.array.config_deviceStatesOnWhichToWakeUp);
        int size = lowPrioritytags.length;
        if (size == 0) {
            this.mLowPriorityTags = null;
            return;
        }
        this.mLowPriorityTags = new ArraySet<>(size);
        for (String str : lowPrioritytags) {
            this.mLowPriorityTags.add(str);
        }
    }
}
