package com.android.server.blob;

import android.app.ActivityManager;
import android.app.blob.BlobHandle;
import android.os.ShellCommand;
import java.io.PrintWriter;
import java.util.Base64;

/* JADX INFO: loaded from: classes.dex */
class BlobStoreManagerShellCommand extends ShellCommand {
    private final BlobStoreManagerService mService;

    BlobStoreManagerShellCommand(BlobStoreManagerService blobStoreManagerService) {
        this.mService = blobStoreManagerService;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int onCommand(String cmd) {
        if (cmd == null) {
            return handleDefaultCommands(null);
        }
        PrintWriter pw = getOutPrintWriter();
        byte b = -1;
        switch (cmd.hashCode()) {
            case -1168531841:
                if (cmd.equals("delete-blob")) {
                    b = 2;
                }
                break;
            case -971115831:
                if (cmd.equals("clear-all-sessions")) {
                    b = 0;
                }
                break;
            case -258166326:
                if (cmd.equals("clear-all-blobs")) {
                    b = 1;
                }
                break;
            case 712607671:
                if (cmd.equals("query-blob-existence")) {
                    b = 4;
                }
                break;
            case 1861559962:
                if (cmd.equals("idle-maintenance")) {
                    b = 3;
                }
                break;
        }
        if (b == 0) {
            return runClearAllSessions(pw);
        }
        if (b == 1) {
            return runClearAllBlobs(pw);
        }
        if (b == 2) {
            return runDeleteBlob(pw);
        }
        if (b == 3) {
            return runIdleMaintenance(pw);
        }
        if (b == 4) {
            return runQueryBlobExistence(pw);
        }
        return handleDefaultCommands(cmd);
    }

    private int runClearAllSessions(PrintWriter pw) {
        ParsedArgs args = new ParsedArgs();
        args.userId = -1;
        if (parseOptions(pw, args) < 0) {
            return -1;
        }
        this.mService.runClearAllSessions(args.userId);
        return 0;
    }

    private int runClearAllBlobs(PrintWriter pw) {
        ParsedArgs args = new ParsedArgs();
        args.userId = -1;
        if (parseOptions(pw, args) < 0) {
            return -1;
        }
        this.mService.runClearAllBlobs(args.userId);
        return 0;
    }

    private int runDeleteBlob(PrintWriter pw) {
        ParsedArgs args = new ParsedArgs();
        if (parseOptions(pw, args) < 0) {
            return -1;
        }
        this.mService.deleteBlob(args.getBlobHandle(), args.userId);
        return 0;
    }

    private int runIdleMaintenance(PrintWriter pw) {
        this.mService.runIdleMaintenance();
        return 0;
    }

    private int runQueryBlobExistence(PrintWriter printWriter) {
        ParsedArgs parsedArgs = new ParsedArgs();
        if (parseOptions(printWriter, parsedArgs) < 0) {
            return -1;
        }
        printWriter.println(this.mService.isBlobAvailable(parsedArgs.blobId, parsedArgs.userId) ? 1 : 0);
        return 0;
    }

    public void onHelp() {
        PrintWriter pw = getOutPrintWriter();
        pw.println("BlobStore service (blob_store) commands:");
        pw.println("help");
        pw.println("    Print this help text.");
        pw.println();
        pw.println("clear-all-sessions [-u | --user USER_ID]");
        pw.println("    Remove all sessions.");
        pw.println("    Options:");
        pw.println("      -u or --user: specify which user's sessions to be removed.");
        pw.println("                    If not specified, sessions in all users are removed.");
        pw.println();
        pw.println("clear-all-blobs [-u | --user USER_ID]");
        pw.println("    Remove all blobs.");
        pw.println("    Options:");
        pw.println("      -u or --user: specify which user's blobs to be removed.");
        pw.println("                    If not specified, blobs in all users are removed.");
        pw.println("delete-blob [-u | --user USER_ID] [--digest DIGEST] [--expiry EXPIRY_TIME] [--label LABEL] [--tag TAG]");
        pw.println("    Delete a blob.");
        pw.println("    Options:");
        pw.println("      -u or --user: specify which user's blobs to be removed;");
        pw.println("                    If not specified, blobs in all users are removed.");
        pw.println("      --digest: Base64 encoded digest of the blob to delete.");
        pw.println("      --expiry: Expiry time of the blob to delete, in milliseconds.");
        pw.println("      --label: Label of the blob to delete.");
        pw.println("      --tag: Tag of the blob to delete.");
        pw.println("idle-maintenance");
        pw.println("    Run idle maintenance which takes care of removing stale data.");
        pw.println("query-blob-existence [-b BLOB_ID]");
        pw.println("    Prints 1 if blob exists, otherwise 0.");
        pw.println();
    }

    private int parseOptions(PrintWriter pw, ParsedArgs args) {
        while (true) {
            String opt = getNextOption();
            if (opt != null) {
                switch (opt) {
                    case "-u":
                    case "--user":
                        args.userId = Integer.parseInt(getNextArgRequired());
                        break;
                    case "--algo":
                        args.algorithm = getNextArgRequired();
                        break;
                    case "--digest":
                        args.digest = Base64.getDecoder().decode(getNextArgRequired());
                        break;
                    case "--label":
                        args.label = getNextArgRequired();
                        break;
                    case "--expiry":
                        args.expiryTimeMillis = Long.parseLong(getNextArgRequired());
                        break;
                    case "--tag":
                        args.tag = getNextArgRequired();
                        break;
                    case "-b":
                        args.blobId = Long.parseLong(getNextArgRequired());
                        break;
                    default:
                        pw.println("Error: unknown option '" + opt + "'");
                        return -1;
                }
            } else {
                if (args.userId == -2) {
                    args.userId = ActivityManager.getCurrentUser();
                }
                return 0;
            }
        }
    }

    private static class ParsedArgs {
        public String algorithm;
        public long blobId;
        public byte[] digest;
        public long expiryTimeMillis;
        public CharSequence label;
        public String tag;
        public int userId;

        private ParsedArgs() {
            this.userId = -2;
            this.algorithm = "SHA-256";
        }

        public BlobHandle getBlobHandle() {
            return BlobHandle.create(this.algorithm, this.digest, this.label, this.expiryTimeMillis, this.tag);
        }
    }
}
