package org.apache.commons.net.ftp;

import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FTPFileFilters {
    public static final FTPFileFilter ALL = new C2467b(29);
    public static final FTPFileFilter NON_NULL = new C2930a(0);
    public static final FTPFileFilter DIRECTORIES = new C2930a(1);

    @Deprecated
    public FTPFileFilters() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$0(FTPFile fTPFile) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$1(FTPFile fTPFile) {
        return fTPFile != null && fTPFile.isDirectory();
    }
}
