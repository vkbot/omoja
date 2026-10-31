package androidx.emoji2.text.flatbuffer;

import java.util.function.Supplier;
import org.apache.commons.io.charset.CharsetEncoders;
import org.apache.commons.io.file.PathUtils;
import org.apache.commons.io.input.BrokenInputStream;
import org.apache.commons.io.input.BrokenReader;
import org.apache.commons.io.input.ReadAheadInputStream;
import org.apache.commons.io.output.BrokenWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Supplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f177a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9) {
        this.f177a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f177a) {
            case 0:
                return Utf8Old.a();
            case 1:
                return new f7.b(null);
            case 2:
                return new f7.b(null);
            case 3:
                return CharsetEncoders.a();
            case 4:
                return BrokenInputStream.y();
            case 5:
                return BrokenReader.c();
            case 6:
                return ReadAheadInputStream.y();
            case 7:
                return BrokenWriter.y();
            default:
                return PathUtils.getTempDirectory();
        }
    }
}
