package androidx.emoji2.text.flatbuffer;

import java.util.function.Supplier;
import org.apache.commons.p161io.charset.CharsetEncoders;
import org.apache.commons.p161io.file.PathUtils;
import org.apache.commons.p161io.input.BrokenInputStream;
import org.apache.commons.p161io.input.BrokenReader;
import org.apache.commons.p161io.input.ReadAheadInputStream;
import org.apache.commons.p161io.output.BrokenWriter;
import p064f7.C1585b;

/* JADX INFO: renamed from: androidx.emoji2.text.flatbuffer.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0489a implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f430a;

    public /* synthetic */ C0489a(int i10) {
        this.f430a = i10;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f430a) {
            case 0:
                return Utf8Old.lambda$static$0();
            case 1:
                return new C1585b(null);
            case 2:
                return new C1585b(null);
            case 3:
                return CharsetEncoders.lambda$toCharsetEncoder$0();
            case 4:
                return BrokenInputStream.lambda$new$0();
            case 5:
                return BrokenReader.lambda$new$0();
            case 6:
                return ReadAheadInputStream.lambda$static$0();
            case 7:
                return BrokenWriter.lambda$new$0();
            default:
                return PathUtils.getTempDirectory();
        }
    }
}
