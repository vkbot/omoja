package p056f;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import org.apache.commons.p161io.C2786e;

/* JADX INFO: renamed from: f.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1522f {

    /* JADX INFO: renamed from: a */
    public static final Charset f3738a = Charset.forName("US-ASCII");

    static {
        Charset.forName("UTF-8");
    }

    /* JADX INFO: renamed from: a */
    public static void m2600a(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            C2786e.m4354f(file, "not a readable directory: ");
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                m2600a(file2);
            }
            if (!file2.delete()) {
                C2786e.m4354f(file2, "failed to delete file: ");
                return;
            }
        }
    }
}
