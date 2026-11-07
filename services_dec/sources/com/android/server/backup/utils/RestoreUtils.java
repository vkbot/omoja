package com.android.server.backup.utils;

import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public class RestoreUtils {
    /* JADX WARN: Bottom block not found for handler: all -> 0x0233 */
    /* JADX WARN: Code duplicated, block: B:149:0x0229 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x01f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:176:? A[Catch: all -> 0x0233, SYNTHETIC, TRY_LEAVE, TryCatch #9 {, blocks: (B:109:0x0232, B:108:0x022f, B:104:0x0229), top: B:149:0x0229, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f4 A[Catch: IOException -> 0x0211, TryCatch #5 {IOException -> 0x0211, blocks: (B:50:0x00dc, B:56:0x00f4, B:58:0x0108, B:61:0x0131, B:63:0x0139, B:65:0x0148, B:66:0x0166, B:70:0x0188, B:72:0x0192, B:74:0x0198, B:76:0x01b5, B:83:0x01d9), top: B:146:0x00d4 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0108 A[Catch: IOException -> 0x0211, TRY_LEAVE, TryCatch #5 {IOException -> 0x0211, blocks: (B:50:0x00dc, B:56:0x00f4, B:58:0x0108, B:61:0x0131, B:63:0x0139, B:65:0x0148, B:66:0x0166, B:70:0x0188, B:72:0x0192, B:74:0x0198, B:76:0x01b5, B:83:0x01d9), top: B:146:0x00d4 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x012f  */
    /* JADX WARN: Code duplicated, block: B:65:0x0148 A[Catch: NameNotFoundException -> 0x01d4, IOException -> 0x0211, TryCatch #5 {IOException -> 0x0211, blocks: (B:50:0x00dc, B:56:0x00f4, B:58:0x0108, B:61:0x0131, B:63:0x0139, B:65:0x0148, B:66:0x0166, B:70:0x0188, B:72:0x0192, B:74:0x0198, B:76:0x01b5, B:83:0x01d9), top: B:146:0x00d4 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0166 A[Catch: NameNotFoundException -> 0x01d4, IOException -> 0x0211, TRY_LEAVE, TryCatch #5 {IOException -> 0x0211, blocks: (B:50:0x00dc, B:56:0x00f4, B:58:0x0108, B:61:0x0131, B:63:0x0139, B:65:0x0148, B:66:0x0166, B:70:0x0188, B:72:0x0192, B:74:0x0198, B:76:0x01b5, B:83:0x01d9), top: B:146:0x00d4 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0186  */
    /* JADX WARN: Code duplicated, block: B:75:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:76:0x01b5 A[Catch: NameNotFoundException -> 0x01d4, IOException -> 0x0211, TRY_LEAVE, TryCatch #5 {IOException -> 0x0211, blocks: (B:50:0x00dc, B:56:0x00f4, B:58:0x0108, B:61:0x0131, B:63:0x0139, B:65:0x0148, B:66:0x0166, B:70:0x0188, B:72:0x0192, B:74:0x0198, B:76:0x01b5, B:83:0x01d9), top: B:146:0x00d4 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x020d  */
    /* JADX WARN: Instruction removed from duplicated block: B:58:0x0108, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:65:0x0148, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:76:0x01b5, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean installApk(java.io.InputStream r20, android.content.Context r21, com.android.server.backup.restore.RestoreDeleteObserver r22, java.util.HashMap<java.lang.String, android.content.pm.Signature[]> r23, java.util.HashMap<java.lang.String, com.android.server.backup.restore.RestorePolicy> r24, com.android.server.backup.FileMetadata r25, java.lang.String r26, com.android.server.backup.utils.BytesReadListener r27, int r28) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 629
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.utils.RestoreUtils.installApk(java.io.InputStream, android.content.Context, com.android.server.backup.restore.RestoreDeleteObserver, java.util.HashMap, java.util.HashMap, com.android.server.backup.FileMetadata, java.lang.String, com.android.server.backup.utils.BytesReadListener, int):boolean");
    }

    private static class LocalIntentReceiver {
        private IIntentSender.Stub mLocalSender;
        private final Object mLock;
        private Intent mResult;

        private LocalIntentReceiver() {
            this.mLock = new Object();
            this.mResult = null;
            this.mLocalSender = new IIntentSender.Stub() { // from class: com.android.server.backup.utils.RestoreUtils.LocalIntentReceiver.1
                public void send(int code, Intent intent, String resolvedType, IBinder whitelistToken, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) {
                    synchronized (LocalIntentReceiver.this.mLock) {
                        LocalIntentReceiver.this.mResult = intent;
                        LocalIntentReceiver.this.mLock.notifyAll();
                    }
                }
            };
        }

        public IntentSender getIntentSender() {
            return new IntentSender(this.mLocalSender);
        }

        public Intent getResult() {
            Intent intent;
            synchronized (this.mLock) {
                while (this.mResult == null) {
                    try {
                        this.mLock.wait();
                    } catch (InterruptedException e) {
                    }
                }
                intent = this.mResult;
            }
            return intent;
        }
    }
}
