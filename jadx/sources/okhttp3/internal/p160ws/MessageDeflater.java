package okhttp3.internal.p160ws;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.p118io.CloseableKt;
import p099j1.C1929i;
import p130l9.AbstractC2223b;
import p130l9.C2239j;
import p130l9.C2242l;
import p130l9.C2245o;
import p130l9.C2246p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, m3159d2 = {"Lokhttp3/internal/ws/MessageDeflater;", "Ljava/io/Closeable;", "", "noContextTakeover", "<init>", "(Z)V", "Ll9/l;", "Ll9/o;", "suffix", "endsWith", "(Ll9/l;Ll9/o;)Z", "buffer", "", "deflate", "(Ll9/l;)V", "close", "()V", "Z", "deflatedBytes", "Ll9/l;", "Ljava/util/zip/Deflater;", "deflater", "Ljava/util/zip/Deflater;", "Ll9/p;", "deflaterSink", "Ll9/p;", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MessageDeflater implements Closeable {
    private final C2242l deflatedBytes;
    private final Deflater deflater;
    private final C2246p deflaterSink;
    private final boolean noContextTakeover;

    public MessageDeflater(boolean z9) {
        this.noContextTakeover = z9;
        C2242l c2242l = new C2242l();
        this.deflatedBytes = c2242l;
        Deflater deflater = new Deflater(-1, true);
        this.deflater = deflater;
        this.deflaterSink = new C2246p(c2242l, deflater);
    }

    private final boolean endsWith(C2242l c2242l, C2245o c2245o) {
        return c2242l.mo3554Q(c2242l.f5878c - ((long) c2245o.mo3585c()), c2245o);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        this.deflaterSink.close();
    }

    public final void deflate(C2242l buffer) throws IOException {
        buffer.getClass();
        if (this.deflatedBytes.f5878c != 0) {
            C1929i.m3029k("Failed requirement.");
            return;
        }
        if (this.noContextTakeover) {
            this.deflater.reset();
        }
        this.deflaterSink.write(buffer, buffer.f5878c);
        this.deflaterSink.flush();
        boolean zEndsWith = endsWith(this.deflatedBytes, MessageDeflaterKt.EMPTY_DEFLATE_BLOCK);
        C2242l c2242l = this.deflatedBytes;
        if (zEndsWith) {
            long j10 = c2242l.f5878c - ((long) 4);
            C2239j c2239jM3612e0 = c2242l.m3612e0(AbstractC2223b.f5848a);
            try {
                c2239jM3612e0.m3599b(j10);
                CloseableKt.closeFinally(c2239jM3612e0, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(c2239jM3612e0, th);
                    throw th2;
                }
            }
        } else {
            c2242l.m3621m0(0);
        }
        C2242l c2242l2 = this.deflatedBytes;
        buffer.write(c2242l2, c2242l2.f5878c);
    }
}
