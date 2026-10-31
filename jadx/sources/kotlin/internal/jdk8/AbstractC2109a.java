package kotlin.internal.jdk8;

import java.nio.file.FileSystemException;
import java.nio.file.FileVisitor;
import java.nio.file.Path;

/* JADX INFO: renamed from: kotlin.internal.jdk8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2109a {
    /* JADX INFO: renamed from: h */
    public static /* synthetic */ FileSystemException m3276h(String str) {
        return new FileSystemException(str);
    }

    /* JADX INFO: renamed from: i */
    public static /* bridge */ /* synthetic */ FileSystemException m3277i(Throwable th) {
        return (FileSystemException) th;
    }

    /* JADX INFO: renamed from: k */
    public static /* bridge */ /* synthetic */ FileVisitor m3279k(Object obj) {
        return (FileVisitor) obj;
    }

    /* JADX INFO: renamed from: m */
    public static /* bridge */ /* synthetic */ Path m3281m(Object obj) {
        return (Path) obj;
    }

    /* JADX INFO: renamed from: v */
    public static /* synthetic */ void m3290v() {
    }
}
