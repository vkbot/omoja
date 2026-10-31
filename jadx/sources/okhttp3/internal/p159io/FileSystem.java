package okhttp3.internal.p159io;

import ai.onnxruntime.C0075b;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.apache.commons.p161io.C2786e;
import p130l9.AbstractC2252v;
import p130l9.C2231f;
import p130l9.C2240j0;
import p130l9.C2254x;
import p130l9.InterfaceC2230e0;
import p130l9.InterfaceC2234g0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\bf\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H&¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0002H&¢\u0006\u0004\b\u0019\u0010\r¨\u0006\u001b"}, m3159d2 = {"Lokhttp3/internal/io/FileSystem;", "", "Ljava/io/File;", "file", "Ll9/g0;", "source", "(Ljava/io/File;)Ll9/g0;", "Ll9/e0;", "sink", "(Ljava/io/File;)Ll9/e0;", "appendingSink", "", "delete", "(Ljava/io/File;)V", "", "exists", "(Ljava/io/File;)Z", "", "size", "(Ljava/io/File;)J", TypedValues.TransitionType.S_FROM, TypedValues.TransitionType.S_TO, "rename", "(Ljava/io/File;Ljava/io/File;)V", "directory", "deleteContents", "Companion", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public interface FileSystem {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @JvmField
    public static final FileSystem SYSTEM = new Companion.SystemFileSystem();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0001¨\u0006\u0006"}, m3159d2 = {"Lokhttp3/internal/io/FileSystem$Companion;", "", "()V", "SYSTEM", "Lokhttp3/internal/io/FileSystem;", "SystemFileSystem", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
        @Metadata(m3158d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u000fJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, m3159d2 = {"Lokhttp3/internal/io/FileSystem$Companion$SystemFileSystem;", "Lokhttp3/internal/io/FileSystem;", "<init>", "()V", "Ljava/io/File;", "file", "Ll9/g0;", "source", "(Ljava/io/File;)Ll9/g0;", "Ll9/e0;", "sink", "(Ljava/io/File;)Ll9/e0;", "appendingSink", "", "delete", "(Ljava/io/File;)V", "", "exists", "(Ljava/io/File;)Z", "", "size", "(Ljava/io/File;)J", TypedValues.TransitionType.S_FROM, TypedValues.TransitionType.S_TO, "rename", "(Ljava/io/File;Ljava/io/File;)V", "directory", "deleteContents", "", "toString", "()Ljava/lang/String;", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
        public static final class SystemFileSystem implements FileSystem {
            @Override // okhttp3.internal.p159io.FileSystem
            public InterfaceC2230e0 appendingSink(File file) {
                file.getClass();
                try {
                    Logger logger = AbstractC2252v.f5896a;
                    return new C2254x(new FileOutputStream(file, true), new C2240j0());
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    Logger logger2 = AbstractC2252v.f5896a;
                    return new C2254x(new FileOutputStream(file, true), new C2240j0());
                }
            }

            @Override // okhttp3.internal.p159io.FileSystem
            public void delete(File file) throws IOException {
                file.getClass();
                if (file.delete() || !file.exists()) {
                    return;
                }
                C2786e.m4354f(file, "failed to delete ");
            }

            @Override // okhttp3.internal.p159io.FileSystem
            public void deleteContents(File directory) throws IOException {
                directory.getClass();
                File[] fileArrListFiles = directory.listFiles();
                if (fileArrListFiles == null) {
                    C2786e.m4354f(directory, "not a readable directory: ");
                    return;
                }
                for (File file : fileArrListFiles) {
                    if (file.isDirectory()) {
                        deleteContents(file);
                    }
                    if (!file.delete()) {
                        C2786e.m4354f(file, "failed to delete ");
                        return;
                    }
                }
            }

            @Override // okhttp3.internal.p159io.FileSystem
            public boolean exists(File file) {
                file.getClass();
                return file.exists();
            }

            @Override // okhttp3.internal.p159io.FileSystem
            public void rename(File from, File to) throws IOException {
                from.getClass();
                to.getClass();
                delete(to);
                if (from.renameTo(to)) {
                    return;
                }
                C0075b.m188m("failed to rename ", from, " to ", to);
            }

            @Override // okhttp3.internal.p159io.FileSystem
            public InterfaceC2230e0 sink(File file) {
                file.getClass();
                try {
                    Logger logger = AbstractC2252v.f5896a;
                    return new C2254x(new FileOutputStream(file, false), new C2240j0());
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    Logger logger2 = AbstractC2252v.f5896a;
                    return new C2254x(new FileOutputStream(file, false), new C2240j0());
                }
            }

            @Override // okhttp3.internal.p159io.FileSystem
            public long size(File file) {
                file.getClass();
                return file.length();
            }

            @Override // okhttp3.internal.p159io.FileSystem
            public InterfaceC2234g0 source(File file) {
                file.getClass();
                Logger logger = AbstractC2252v.f5896a;
                return new C2231f(new FileInputStream(file), C2240j0.NONE);
            }

            public String toString() {
                return "FileSystem.SYSTEM";
            }
        }

        private Companion() {
        }
    }

    InterfaceC2230e0 appendingSink(File file);

    void delete(File file);

    void deleteContents(File directory);

    boolean exists(File file);

    void rename(File from, File to);

    InterfaceC2230e0 sink(File file);

    long size(File file);

    InterfaceC2234g0 source(File file);
}
