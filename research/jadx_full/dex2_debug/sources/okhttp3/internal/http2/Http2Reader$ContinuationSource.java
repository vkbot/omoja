package okhttp3.internal.http2;

import java.io.IOException;
import java.util.logging.Level;
import kotlin.Metadata;
import l9.g0;
import l9.j0;
import l9.l;
import l9.n;
import n0.b;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0013\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0013R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\"\u0010\u001e\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0016\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\"\u0010!\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0016\u001a\u0004\b\"\u0010\u0018\"\u0004\b#\u0010\u001aR\"\u0010$\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0016\u001a\u0004\b%\u0010\u0018\"\u0004\b&\u0010\u001a¨\u0006'"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$ContinuationSource;", "Ll9/g0;", "Ll9/n;", "source", "<init>", "(Ll9/n;)V", HttpUrl.FRAGMENT_ENCODE_SET, "readContinuationHeader", "()V", "Ll9/l;", "sink", HttpUrl.FRAGMENT_ENCODE_SET, "byteCount", "read", "(Ll9/l;J)J", "Ll9/j0;", "timeout", "()Ll9/j0;", "close", "Ll9/n;", HttpUrl.FRAGMENT_ENCODE_SET, "length", "I", "getLength", "()I", "setLength", "(I)V", "flags", "getFlags", "setFlags", "streamId", "getStreamId", "setStreamId", "left", "getLeft", "setLeft", "padding", "getPadding", "setPadding", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Http2Reader$ContinuationSource implements g0 {
    private int flags;
    private int left;
    private int length;
    private int padding;
    private final n source;
    private int streamId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Http2Reader$ContinuationSource(n nVar) {
        nVar.getClass();
        this.source = nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readContinuationHeader() throws IOException {
        int i = this.streamId;
        int medium = Util.readMedium(this.source);
        this.left = medium;
        this.length = medium;
        int iAnd = Util.and(this.source.readByte(), 255);
        this.flags = Util.and(this.source.readByte(), 255);
        Http2Reader$Companion http2Reader$Companion = Http2Reader.Companion;
        if (http2Reader$Companion.getLogger().isLoggable(Level.FINE)) {
            http2Reader$Companion.getLogger().fine(Http2.INSTANCE.frameLog(true, this.streamId, this.length, iAnd, this.flags));
        }
        int i2 = this.source.readInt() & Integer.MAX_VALUE;
        this.streamId = i2;
        if (iAnd == 9) {
            if (i2 == i) {
                return;
            }
            b.A("TYPE_CONTINUATION streamId changed");
        } else {
            throw new IOException(iAnd + " != TYPE_CONTINUATION");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getFlags() {
        return this.flags;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getLeft() {
        return this.left;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getLength() {
        return this.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getPadding() {
        return this.padding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getStreamId() {
        return this.streamId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    public long read(l sink, long byteCount) throws IOException {
        sink.getClass();
        while (true) {
            int i = this.left;
            n nVar = this.source;
            if (i != 0) {
                long j = nVar.read(sink, Math.min(byteCount, i));
                if (j == -1) {
                    return -1L;
                }
                this.left -= (int) j;
                return j;
            }
            nVar.skip(this.padding);
            this.padding = 0;
            if ((this.flags & 4) != 0) {
                return -1L;
            }
            readContinuationHeader();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setFlags(int i) {
        this.flags = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setLeft(int i) {
        this.left = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setLength(int i) {
        this.length = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setPadding(int i) {
        this.padding = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setStreamId(int i) {
        this.streamId = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    /* JADX INFO: renamed from: timeout */
    public j0 getTimeout() {
        return this.source.getTimeout();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
