package kotlin.p118io.path;

import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemException;
import java.nio.file.FileSystemLoopException;
import java.nio.file.SecureDirectoryStream;
import java.nio.file.attribute.BasicFileAttributes;

/* JADX INFO: renamed from: kotlin.io.path.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2119a {
    /* JADX INFO: renamed from: b */
    public static /* bridge */ /* synthetic */ DirectoryStream m3310b(Object obj) {
        return (DirectoryStream) obj;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ FileSystemException m3314f() {
        return new FileSystemException("Failed to delete one or more files. See suppressed exceptions for details.");
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ FileSystemLoopException m3315g(String str) {
        return new FileSystemLoopException(str);
    }

    /* JADX INFO: renamed from: o */
    public static /* bridge */ /* synthetic */ SecureDirectoryStream m3323o(Object obj) {
        return (SecureDirectoryStream) obj;
    }

    /* JADX INFO: renamed from: p */
    public static /* bridge */ /* synthetic */ BasicFileAttributes m3324p(Object obj) {
        return (BasicFileAttributes) obj;
    }

    /* JADX INFO: renamed from: q */
    public static /* synthetic */ void m3325q() {
    }

    /* JADX INFO: renamed from: t */
    public static /* bridge */ /* synthetic */ boolean m3328t(Object obj) {
        return obj instanceof SecureDirectoryStream;
    }
}
