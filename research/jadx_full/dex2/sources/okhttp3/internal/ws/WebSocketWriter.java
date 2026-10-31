package okhttp3.internal.ws;

import j1.i;
import java.io.Closeable;
import java.io.EOFException;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.j;
import l9.l;
import l9.m;
import l9.o;
import n0.b;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0017\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u001a\u0010\u0014J\u001d\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0010¢\u0006\u0004\b\u001d\u0010\u0014J\u000f\u0010\u001e\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010 R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010$\u001a\u0004\b%\u0010&R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010 R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010 R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010'R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010*R\u0016\u0010,\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010 R\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00101\u001a\u0004\u0018\u0001008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00104\u001a\u0004\u0018\u0001038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105¨\u00066"}, d2 = {"Lokhttp3/internal/ws/WebSocketWriter;", "Ljava/io/Closeable;", HttpUrl.FRAGMENT_ENCODE_SET, "isClient", "Ll9/m;", "sink", "Ljava/util/Random;", "random", "perMessageDeflate", "noContextTakeover", HttpUrl.FRAGMENT_ENCODE_SET, "minimumDeflateSize", "<init>", "(ZLl9/m;Ljava/util/Random;ZZJ)V", HttpUrl.FRAGMENT_ENCODE_SET, "opcode", "Ll9/o;", "payload", HttpUrl.FRAGMENT_ENCODE_SET, "writeControlFrame", "(ILl9/o;)V", "writePing", "(Ll9/o;)V", "writePong", "code", "reason", "writeClose", "formatOpcode", "data", "writeMessageFrame", "close", "()V", "Z", "Ll9/m;", "getSink", "()Ll9/m;", "Ljava/util/Random;", "getRandom", "()Ljava/util/Random;", "J", "Ll9/l;", "messageBuffer", "Ll9/l;", "sinkBuffer", "writerClosed", "Lokhttp3/internal/ws/MessageDeflater;", "messageDeflater", "Lokhttp3/internal/ws/MessageDeflater;", HttpUrl.FRAGMENT_ENCODE_SET, "maskKey", "[B", "Ll9/j;", "maskCursor", "Ll9/j;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWebSocketWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketWriter.kt\nokhttp3/internal/ws/WebSocketWriter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"})
public final class WebSocketWriter implements Closeable {
    private final boolean isClient;
    private final j maskCursor;
    private final byte[] maskKey;
    private final l messageBuffer;
    private MessageDeflater messageDeflater;
    private final long minimumDeflateSize;
    private final boolean noContextTakeover;
    private final boolean perMessageDeflate;
    private final Random random;
    private final m sink;
    private final l sinkBuffer;
    private boolean writerClosed;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WebSocketWriter(boolean z, m mVar, Random random, boolean z2, boolean z3, long j) {
        mVar.getClass();
        random.getClass();
        this.isClient = z;
        this.sink = mVar;
        this.random = random;
        this.perMessageDeflate = z2;
        this.noContextTakeover = z3;
        this.minimumDeflateSize = j;
        this.messageBuffer = new l();
        this.sinkBuffer = mVar.a();
        this.maskKey = z ? new byte[4] : null;
        this.maskCursor = z ? new j() : null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void writeControlFrame(int opcode, o payload) {
        if (this.writerClosed) {
            b.A("closed");
            return;
        }
        int iC = payload.c();
        if (iC > 125) {
            i.k("Payload size must be less than or equal to 125");
            return;
        }
        this.sinkBuffer.m0(opcode | 128);
        boolean z = this.isClient;
        l lVar = this.sinkBuffer;
        if (z) {
            lVar.m0(iC | 128);
            Random random = this.random;
            byte[] bArr = this.maskKey;
            bArr.getClass();
            random.nextBytes(bArr);
            l lVar2 = this.sinkBuffer;
            byte[] bArr2 = this.maskKey;
            lVar2.getClass();
            bArr2.getClass();
            lVar2.m174write(bArr2, 0, bArr2.length);
            if (iC > 0) {
                l lVar3 = this.sinkBuffer;
                long j = lVar3.c;
                lVar3.l0(payload);
                l lVar4 = this.sinkBuffer;
                j jVar = this.maskCursor;
                jVar.getClass();
                lVar4.e0(jVar);
                this.maskCursor.c(j);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        } else {
            lVar.m0(iC);
            this.sinkBuffer.l0(payload);
        }
        this.sink.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        MessageDeflater messageDeflater = this.messageDeflater;
        if (messageDeflater != null) {
            messageDeflater.close();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Random getRandom() {
        return this.random;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final m getSink() {
        return this.sink;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void writeClose(int code, o reason) throws EOFException {
        o oVarF = o.e;
        if (code != 0 || reason != null) {
            if (code != 0) {
                WebSocketProtocol.INSTANCE.validateCloseCode(code);
            }
            l lVar = new l();
            lVar.r0(code);
            if (reason != null) {
                lVar.l0(reason);
            }
            oVarF = lVar.f(lVar.c);
        }
        try {
            writeControlFrame(8, oVarF);
        } finally {
            this.writerClosed = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void writeMessageFrame(int formatOpcode, o data) {
        data.getClass();
        if (this.writerClosed) {
            b.A("closed");
            return;
        }
        this.messageBuffer.l0(data);
        int i = formatOpcode | 128;
        if (this.perMessageDeflate && data.c() >= this.minimumDeflateSize) {
            MessageDeflater messageDeflater = this.messageDeflater;
            if (messageDeflater == null) {
                messageDeflater = new MessageDeflater(this.noContextTakeover);
                this.messageDeflater = messageDeflater;
            }
            messageDeflater.deflate(this.messageBuffer);
            i = formatOpcode | 192;
        }
        long j = this.messageBuffer.c;
        this.sinkBuffer.m0(i);
        int i2 = this.isClient ? 128 : 0;
        l lVar = this.sinkBuffer;
        if (j <= 125) {
            lVar.m0(i2 | ((int) j));
        } else if (j <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            lVar.m0(i2 | WebSocketProtocol.PAYLOAD_SHORT);
            this.sinkBuffer.r0((int) j);
        } else {
            lVar.m0(i2 | 127);
            this.sinkBuffer.q0(j);
        }
        if (this.isClient) {
            Random random = this.random;
            byte[] bArr = this.maskKey;
            bArr.getClass();
            random.nextBytes(bArr);
            l lVar2 = this.sinkBuffer;
            byte[] bArr2 = this.maskKey;
            lVar2.getClass();
            bArr2.getClass();
            lVar2.m174write(bArr2, 0, bArr2.length);
            if (j > 0) {
                l lVar3 = this.messageBuffer;
                j jVar = this.maskCursor;
                jVar.getClass();
                lVar3.e0(jVar);
                this.maskCursor.c(0L);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        }
        this.sinkBuffer.write(this.messageBuffer, j);
        this.sink.g();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void writePing(o payload) {
        payload.getClass();
        writeControlFrame(9, payload);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void writePong(o payload) {
        payload.getClass();
        writeControlFrame(10, payload);
    }
}
