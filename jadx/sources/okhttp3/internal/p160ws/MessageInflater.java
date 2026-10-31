package okhttp3.internal.p160ws;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import p099j1.C1929i;
import p130l9.C2222a0;
import p130l9.C2242l;
import p130l9.C2251u;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, m3159d2 = {"Lokhttp3/internal/ws/MessageInflater;", "Ljava/io/Closeable;", "", "noContextTakeover", "<init>", "(Z)V", "Ll9/l;", "buffer", "", "inflate", "(Ll9/l;)V", "close", "()V", "Z", "deflatedBytes", "Ll9/l;", "Ljava/util/zip/Inflater;", "inflater", "Ljava/util/zip/Inflater;", "Ll9/u;", "inflaterSource", "Ll9/u;", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MessageInflater implements Closeable {
    private final C2242l deflatedBytes;
    private final Inflater inflater;
    private final C2251u inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z9) {
        this.noContextTakeover = z9;
        C2242l c2242l = new C2242l();
        this.deflatedBytes = c2242l;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new C2251u(new C2222a0(c2242l), inflater);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inflaterSource.close();
    }

    public final void inflate(C2242l buffer) throws IOException {
        buffer.getClass();
        if (this.deflatedBytes.f5878c != 0) {
            C1929i.m3029k("Failed requirement.");
            return;
        }
        if (this.noContextTakeover) {
            this.inflater.reset();
        }
        this.deflatedBytes.mo3603G(buffer);
        this.deflatedBytes.m3625p0(65535);
        long bytesRead = this.inflater.getBytesRead() + this.deflatedBytes.f5878c;
        do {
            this.inflaterSource.m3640b(buffer, Long.MAX_VALUE);
        } while (this.inflater.getBytesRead() < bytesRead);
    }
}
