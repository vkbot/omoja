package androidx.exifinterface.media;

import android.system.ErrnoException;
import android.system.Os;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.io.FileDescriptor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class ExifInterfaceUtils$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ExifInterfaceUtils$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void close(FileDescriptor fileDescriptor) throws ErrnoException {
        Os.close(fileDescriptor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static FileDescriptor dup(FileDescriptor fileDescriptor) {
        return Os.dup(fileDescriptor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static long lseek(FileDescriptor fileDescriptor, long j9, int i9) {
        return Os.lseek(fileDescriptor, j9, i9);
    }
}
