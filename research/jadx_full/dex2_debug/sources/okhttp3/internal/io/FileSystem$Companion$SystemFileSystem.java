package okhttp3.internal.io;

import ai.onnxruntime.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.logging.Logger;
import kotlin.Metadata;
import l9.e0;
import l9.f;
import l9.g0;
import l9.j0;
import l9.v;
import l9.x;
import okhttp3.HttpUrl;
import org.apache.commons.io.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u000fJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/io/FileSystem$Companion$SystemFileSystem;", "Lokhttp3/internal/io/FileSystem;", "<init>", "()V", "Ljava/io/File;", "file", "Ll9/g0;", "source", "(Ljava/io/File;)Ll9/g0;", "Ll9/e0;", "sink", "(Ljava/io/File;)Ll9/e0;", "appendingSink", HttpUrl.FRAGMENT_ENCODE_SET, "delete", "(Ljava/io/File;)V", HttpUrl.FRAGMENT_ENCODE_SET, "exists", "(Ljava/io/File;)Z", HttpUrl.FRAGMENT_ENCODE_SET, "size", "(Ljava/io/File;)J", "from", "to", "rename", "(Ljava/io/File;Ljava/io/File;)V", "directory", "deleteContents", HttpUrl.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FileSystem$Companion$SystemFileSystem implements FileSystem {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.io.FileSystem
    public e0 appendingSink(File file) {
        file.getClass();
        try {
            Logger logger = v.a;
            return new x(new FileOutputStream(file, true), new j0());
        } catch (FileNotFoundException unused) {
            file.getParentFile().mkdirs();
            Logger logger2 = v.a;
            return new x(new FileOutputStream(file, true), new j0());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.io.FileSystem
    public void delete(File file) {
        file.getClass();
        if (file.delete() || !file.exists()) {
            return;
        }
        e.f(file, "failed to delete ");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.io.FileSystem
    public void deleteContents(File directory) {
        directory.getClass();
        File[] fileArrListFiles = directory.listFiles();
        if (fileArrListFiles == null) {
            e.f(directory, "not a readable directory: ");
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isDirectory()) {
                deleteContents(file);
            }
            if (!file.delete()) {
                e.f(file, "failed to delete ");
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.io.FileSystem
    public boolean exists(File file) {
        file.getClass();
        return file.exists();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.io.FileSystem
    public void rename(File from, File to) {
        from.getClass();
        to.getClass();
        delete(to);
        if (from.renameTo(to)) {
            return;
        }
        b.m("failed to rename ", from, " to ", to);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.io.FileSystem
    public e0 sink(File file) {
        file.getClass();
        try {
            Logger logger = v.a;
            return new x(new FileOutputStream(file, false), new j0());
        } catch (FileNotFoundException unused) {
            file.getParentFile().mkdirs();
            Logger logger2 = v.a;
            return new x(new FileOutputStream(file, false), new j0());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.io.FileSystem
    public long size(File file) {
        file.getClass();
        return file.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.io.FileSystem
    public g0 source(File file) {
        file.getClass();
        Logger logger = v.a;
        return new f(new FileInputStream(file), j0.NONE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "FileSystem.SYSTEM";
    }
}
