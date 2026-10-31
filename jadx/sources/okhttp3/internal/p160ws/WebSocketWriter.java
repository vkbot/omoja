package okhttp3.internal.p160ws;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import p099j1.C1929i;
import p130l9.C2239j;
import p130l9.C2242l;
import p130l9.C2245o;
import p130l9.InterfaceC2243m;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0017\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u001a\u0010\u0014J\u001d\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0010¢\u0006\u0004\b\u001d\u0010\u0014J\u000f\u0010\u001e\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010 R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010$\u001a\u0004\b%\u0010&R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010 R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010 R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010'R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010*R\u0016\u0010,\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010 R\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00101\u001a\u0004\u0018\u0001008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00104\u001a\u0004\u0018\u0001038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105¨\u00066"}, m3159d2 = {"Lokhttp3/internal/ws/WebSocketWriter;", "Ljava/io/Closeable;", "", "isClient", "Ll9/m;", "sink", "Ljava/util/Random;", "random", "perMessageDeflate", "noContextTakeover", "", "minimumDeflateSize", "<init>", "(ZLl9/m;Ljava/util/Random;ZZJ)V", "", "opcode", "Ll9/o;", "payload", "", "writeControlFrame", "(ILl9/o;)V", "writePing", "(Ll9/o;)V", "writePong", "code", "reason", "writeClose", "formatOpcode", "data", "writeMessageFrame", "close", "()V", "Z", "Ll9/m;", "getSink", "()Ll9/m;", "Ljava/util/Random;", "getRandom", "()Ljava/util/Random;", "J", "Ll9/l;", "messageBuffer", "Ll9/l;", "sinkBuffer", "writerClosed", "Lokhttp3/internal/ws/MessageDeflater;", "messageDeflater", "Lokhttp3/internal/ws/MessageDeflater;", "", "maskKey", "[B", "Ll9/j;", "maskCursor", "Ll9/j;", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nWebSocketWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketWriter.kt\nokhttp3/internal/ws/WebSocketWriter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"})
public final class WebSocketWriter implements Closeable {
    private final boolean isClient;
    private final C2239j maskCursor;
    private final byte[] maskKey;
    private final C2242l messageBuffer;
    private MessageDeflater messageDeflater;
    private final long minimumDeflateSize;
    private final boolean noContextTakeover;
    private final boolean perMessageDeflate;
    private final Random random;
    private final InterfaceC2243m sink;
    private final C2242l sinkBuffer;
    private boolean writerClosed;

    public WebSocketWriter(boolean z9, InterfaceC2243m interfaceC2243m, Random random, boolean z10, boolean z11, long j10) {
        interfaceC2243m.getClass();
        random.getClass();
        this.isClient = z9;
        this.sink = interfaceC2243m;
        this.random = random;
        this.perMessageDeflate = z10;
        this.noContextTakeover = z11;
        this.minimumDeflateSize = j10;
        this.messageBuffer = new C2242l();
        this.sinkBuffer = interfaceC2243m.mo3634a();
        this.maskKey = z9 ? new byte[4] : null;
        this.maskCursor = z9 ? new C2239j() : null;
    }

    private final void writeControlFrame(int opcode, C2245o payload) throws IOException {
        if (this.writerClosed) {
            C2467b.m3820A("closed");
            return;
        }
        int iMo3585c = payload.mo3585c();
        if (iMo3585c > 125) {
            C1929i.m3029k("Payload size must be less than or equal to 125");
            return;
        }
        this.sinkBuffer.m3621m0(opcode | 128);
        boolean z9 = this.isClient;
        C2242l c2242l = this.sinkBuffer;
        if (z9) {
            c2242l.m3621m0(iMo3585c | 128);
            Random random = this.random;
            byte[] bArr = this.maskKey;
            bArr.getClass();
            random.nextBytes(bArr);
            C2242l c2242l2 = this.sinkBuffer;
            byte[] bArr2 = this.maskKey;
            c2242l2.getClass();
            bArr2.getClass();
            c2242l2.m7551write(bArr2, 0, bArr2.length);
            if (iMo3585c > 0) {
                C2242l c2242l3 = this.sinkBuffer;
                long j10 = c2242l3.f5878c;
                c2242l3.m3620l0(payload);
                C2242l c2242l4 = this.sinkBuffer;
                C2239j c2239j = this.maskCursor;
                c2239j.getClass();
                c2242l4.m3612e0(c2239j);
                this.maskCursor.m3600c(j10);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        } else {
            c2242l.m3621m0(iMo3585c);
            this.sinkBuffer.m3620l0(payload);
        }
        this.sink.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        MessageDeflater messageDeflater = this.messageDeflater;
        if (messageDeflater != null) {
            messageDeflater.close();
        }
    }

    public final Random getRandom() {
        return this.random;
    }

    public final InterfaceC2243m getSink() {
        return this.sink;
    }

    public final void writeClose(int code, C2245o reason) throws EOFException {
        C2245o c2245oMo3562f = C2245o.f5879e;
        if (code != 0 || reason != null) {
            if (code != 0) {
                WebSocketProtocol.INSTANCE.validateCloseCode(code);
            }
            C2242l c2242l = new C2242l();
            c2242l.m3627r0(code);
            if (reason != null) {
                c2242l.m3620l0(reason);
            }
            c2245oMo3562f = c2242l.mo3562f(c2242l.f5878c);
        }
        try {
            writeControlFrame(8, c2245oMo3562f);
        } finally {
            this.writerClosed = true;
        }
    }

    public final void writeMessageFrame(int formatOpcode, C2245o data) throws IOException {
        data.getClass();
        if (this.writerClosed) {
            C2467b.m3820A("closed");
            return;
        }
        this.messageBuffer.m3620l0(data);
        int i10 = formatOpcode | 128;
        if (this.perMessageDeflate && data.mo3585c() >= this.minimumDeflateSize) {
            MessageDeflater messageDeflater = this.messageDeflater;
            if (messageDeflater == null) {
                messageDeflater = new MessageDeflater(this.noContextTakeover);
                this.messageDeflater = messageDeflater;
            }
            messageDeflater.deflate(this.messageBuffer);
            i10 = formatOpcode | 192;
        }
        long j10 = this.messageBuffer.f5878c;
        this.sinkBuffer.m3621m0(i10);
        int i11 = this.isClient ? 128 : 0;
        C2242l c2242l = this.sinkBuffer;
        if (j10 <= 125) {
            c2242l.m3621m0(i11 | ((int) j10));
        } else if (j10 <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            c2242l.m3621m0(i11 | WebSocketProtocol.PAYLOAD_SHORT);
            this.sinkBuffer.m3627r0((int) j10);
        } else {
            c2242l.m3621m0(i11 | 127);
            this.sinkBuffer.m3626q0(j10);
        }
        if (this.isClient) {
            Random random = this.random;
            byte[] bArr = this.maskKey;
            bArr.getClass();
            random.nextBytes(bArr);
            C2242l c2242l2 = this.sinkBuffer;
            byte[] bArr2 = this.maskKey;
            c2242l2.getClass();
            bArr2.getClass();
            c2242l2.m7551write(bArr2, 0, bArr2.length);
            if (j10 > 0) {
                C2242l c2242l3 = this.messageBuffer;
                C2239j c2239j = this.maskCursor;
                c2239j.getClass();
                c2242l3.m3612e0(c2239j);
                this.maskCursor.m3600c(0L);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        }
        this.sinkBuffer.write(this.messageBuffer, j10);
        this.sink.mo3614g();
    }

    public final void writePing(C2245o payload) {
        payload.getClass();
        writeControlFrame(9, payload);
    }

    public final void writePong(C2245o payload) throws IOException {
        payload.getClass();
        writeControlFrame(10, payload);
    }
}
