package com.android.server.pm;

import android.content.pm.PackageParser;
import android.os.Trace;
import com.android.internal.util.ConcurrentUtils;
import com.android.server.pm.parsing.PackageParser2;
import com.android.server.pm.parsing.pkg.ParsedPackage;
import java.io.File;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
class ParallelPackageParser {
    private static final int MAX_THREADS = 4;
    private static final int QUEUE_CAPACITY = 30;
    private final ExecutorService mExecutorService;
    private volatile String mInterruptedInThread;
    private final PackageParser2 mPackageParser;
    private final BlockingQueue<ParseResult> mQueue = new ArrayBlockingQueue(30);

    static ExecutorService makeExecutorService() {
        return ConcurrentUtils.newFixedThreadPool(4, "package-parsing-thread", -2);
    }

    ParallelPackageParser(PackageParser2 packageParser, ExecutorService executorService) {
        this.mPackageParser = packageParser;
        this.mExecutorService = executorService;
    }

    static class ParseResult {
        ParsedPackage parsedPackage;
        File scanFile;
        Throwable throwable;

        ParseResult() {
        }

        public String toString() {
            return "ParseResult{parsedPackage=" + this.parsedPackage + ", scanFile=" + this.scanFile + ", throwable=" + this.throwable + '}';
        }
    }

    public ParseResult take() {
        try {
            if (this.mInterruptedInThread != null) {
                throw new InterruptedException("Interrupted in " + this.mInterruptedInThread);
            }
            return this.mQueue.take();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException(e);
        }
    }

    public void submit(final File scanFile, final int parseFlags) {
        this.mExecutorService.submit(new Runnable() { // from class: com.android.server.pm.-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$submit$0$ParallelPackageParser(scanFile, parseFlags);
            }
        });
    }

    public /* synthetic */ void lambda$submit$0$ParallelPackageParser(File scanFile, int parseFlags) {
        ParseResult pr = new ParseResult();
        Trace.traceBegin(262144L, "parallel parsePackage [" + scanFile + "]");
        try {
            pr.scanFile = scanFile;
            pr.parsedPackage = parsePackage(scanFile, parseFlags);
        } catch (Throwable e) {
            try {
                pr.throwable = e;
            } catch (Throwable th) {
                Trace.traceEnd(262144L);
                throw th;
            }
        }
        Trace.traceEnd(262144L);
        try {
            this.mQueue.put(pr);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            this.mInterruptedInThread = Thread.currentThread().getName();
        }
    }

    protected ParsedPackage parsePackage(File scanFile, int parseFlags) throws PackageParser.PackageParserException {
        return this.mPackageParser.parsePackage(scanFile, parseFlags, true);
    }
}
