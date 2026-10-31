package org.apache.commons.net.ftp;

import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FTPFileFilters {
    public static final FTPFileFilter ALL = new b(29);
    public static final FTPFileFilter NON_NULL = new a(0);
    public static final FTPFileFilter DIRECTORIES = new a(1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public FTPFileFilters() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean a(FTPFile fTPFile) {
        return lambda$static$0(fTPFile);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean b(FTPFile fTPFile) {
        return lambda$static$1(fTPFile);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$static$0(FTPFile fTPFile) {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$static$1(FTPFile fTPFile) {
        return fTPFile != null && fTPFile.isDirectory();
    }
}
