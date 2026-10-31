package okhttp3.internal.cache2;

import j1.i;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.g0;
import l9.j0;
import l9.l;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0010R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/cache2/Relay$RelaySource;", "Ll9/g0;", "<init>", "(Lokhttp3/internal/cache2/Relay;)V", "Ll9/l;", "sink", HttpUrl.FRAGMENT_ENCODE_SET, "byteCount", "read", "(Ll9/l;J)J", "Ll9/j0;", "timeout", "()Ll9/j0;", HttpUrl.FRAGMENT_ENCODE_SET, "close", "()V", "Ll9/j0;", "Lokhttp3/internal/cache2/FileOperator;", "fileOperator", "Lokhttp3/internal/cache2/FileOperator;", "sourcePos", "J", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Relay.kt\nokhttp3/internal/cache2/Relay$RelaySource\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,356:1\n563#2:357\n*S KotlinDebug\n*F\n+ 1 Relay.kt\nokhttp3/internal/cache2/Relay$RelaySource\n*L\n267#1:357\n*E\n"})
public final class Relay$RelaySource implements g0 {
    private FileOperator fileOperator;
    private long sourcePos;
    final /* synthetic */ Relay this$0;
    private final j0 timeout = new j0();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public Relay$RelaySource(Relay relay) {
        this.this$0 = relay;
        RandomAccessFile file = relay.getFile();
        file.getClass();
        FileChannel channel = file.getChannel();
        channel.getClass();
        this.fileOperator = new FileOperator(channel);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.fileOperator == null) {
            return;
        }
        RandomAccessFile randomAccessFile = null;
        this.fileOperator = null;
        Relay relay = this.this$0;
        synchronized (relay) {
            try {
                relay.setSourceCount(relay.getSourceCount() - 1);
                if (relay.getSourceCount() == 0) {
                    RandomAccessFile file = relay.getFile();
                    relay.setFile(null);
                    randomAccessFile = file;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (randomAccessFile != null) {
            Util.closeQuietly(randomAccessFile);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    public long read(l sink, long byteCount) throws IOException {
        char c;
        sink.getClass();
        if (this.fileOperator == null) {
            i.l("Check failed.");
            return 0L;
        }
        Relay relay = this.this$0;
        synchronized (relay) {
            while (true) {
                try {
                    if (this.sourcePos != relay.getUpstreamPos()) {
                        long upstreamPos = relay.getUpstreamPos() - relay.getBuffer().c;
                        if (this.sourcePos < upstreamPos) {
                            c = 2;
                            break;
                        }
                        long jMin = Math.min(byteCount, relay.getUpstreamPos() - this.sourcePos);
                        relay.getBuffer().S(this.sourcePos - upstreamPos, sink, jMin);
                        this.sourcePos += jMin;
                        return jMin;
                    }
                    if (!relay.getComplete()) {
                        if (relay.getUpstreamReader() == null) {
                            relay.setUpstreamReader(Thread.currentThread());
                            c = 1;
                            break;
                        }
                        this.timeout.waitUntilNotified(relay);
                    } else {
                        return -1L;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            Relay relay2 = this.this$0;
            if (c == 2) {
                long jMin2 = Math.min(byteCount, relay2.getUpstreamPos() - this.sourcePos);
                FileOperator fileOperator = this.fileOperator;
                fileOperator.getClass();
                fileOperator.read(this.sourcePos + 32, sink, jMin2);
                this.sourcePos += jMin2;
                return jMin2;
            }
            try {
                g0 upstream = relay2.getUpstream();
                upstream.getClass();
                long j = upstream.read(this.this$0.getUpstreamBuffer(), this.this$0.getBufferMaxSize());
                if (j == -1) {
                    Relay relay3 = this.this$0;
                    relay3.commit(relay3.getUpstreamPos());
                    Relay relay4 = this.this$0;
                    synchronized (relay4) {
                        relay4.setUpstreamReader(null);
                        relay4.notifyAll();
                        Unit unit = Unit.INSTANCE;
                    }
                    return -1L;
                }
                long jMin3 = Math.min(j, byteCount);
                this.this$0.getUpstreamBuffer().S(0L, sink, jMin3);
                this.sourcePos += jMin3;
                FileOperator fileOperator2 = this.fileOperator;
                fileOperator2.getClass();
                fileOperator2.write(this.this$0.getUpstreamPos() + 32, this.this$0.getUpstreamBuffer().c(), j);
                Relay relay5 = this.this$0;
                synchronized (relay5) {
                    try {
                        relay5.getBuffer().write(relay5.getUpstreamBuffer(), j);
                        if (relay5.getBuffer().c > relay5.getBufferMaxSize()) {
                            relay5.getBuffer().skip(relay5.getBuffer().c - relay5.getBufferMaxSize());
                        }
                        relay5.setUpstreamPos(relay5.getUpstreamPos() + j);
                        Unit unit2 = Unit.INSTANCE;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                Relay relay6 = this.this$0;
                synchronized (relay6) {
                    relay6.setUpstreamReader(null);
                    relay6.notifyAll();
                }
                return jMin3;
            } catch (Throwable th3) {
                Relay relay7 = this.this$0;
                synchronized (relay7) {
                    relay7.setUpstreamReader(null);
                    relay7.notifyAll();
                    Unit unit3 = Unit.INSTANCE;
                    throw th3;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    /* JADX INFO: renamed from: timeout, reason: from getter */
    public j0 getTimeout() {
        return this.timeout;
    }
}
