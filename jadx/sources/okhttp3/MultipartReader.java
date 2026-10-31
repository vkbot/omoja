package okhttp3;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.http1.HeadersReader;
import org.apache.commons.net.SocketClient;
import p099j1.C1929i;
import p130l9.AbstractC2223b;
import p130l9.C2222a0;
import p130l9.C2224b0;
import p130l9.C2237i;
import p130l9.C2238i0;
import p130l9.C2240j0;
import p130l9.C2242l;
import p130l9.C2245o;
import p130l9.C2253w;
import p130l9.InterfaceC2234g0;
import p130l9.InterfaceC2244n;
import p140m9.AbstractC2430a;
import p232w7.C3537c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 &2\u00020\u0001:\u0003&'(B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nJ\u0017\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0005\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010!R\u001c\u0010$\u001a\b\u0018\u00010#R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006)"}, m3159d2 = {"Lokhttp3/MultipartReader;", "Ljava/io/Closeable;", "Ll9/n;", "source", "", "boundary", "<init>", "(Ll9/n;Ljava/lang/String;)V", "Lokhttp3/ResponseBody;", "response", "(Lokhttp3/ResponseBody;)V", "", "maxResult", "currentPartBytesRemaining", "(J)J", "Lokhttp3/MultipartReader$Part;", "nextPart", "()Lokhttp3/MultipartReader$Part;", "", "close", "()V", "Ll9/n;", "Ljava/lang/String;", "()Ljava/lang/String;", "Ll9/o;", "dashDashBoundary", "Ll9/o;", "crlfDashDashBoundary", "", "partCount", "I", "", "closed", "Z", "noMoreParts", "Lokhttp3/MultipartReader$PartSource;", "currentPart", "Lokhttp3/MultipartReader$PartSource;", "Companion", "Part", "PartSource", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"})
public final class MultipartReader implements Closeable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final C2253w afterBoundaryOptions;
    private final String boundary;
    private boolean closed;
    private final C2245o crlfDashDashBoundary;
    private PartSource currentPart;
    private final C2245o dashDashBoundary;
    private boolean noMoreParts;
    private int partCount;
    private final InterfaceC2244n source;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096\u0001¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u0003\u0010\u000b\u001a\u0004\b\u0003\u0010\fR\u0017\u0010\u0005\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b\u0005\u0010\r\u001a\u0004\b\u0005\u0010\u000e¨\u0006\u000f"}, m3159d2 = {"Lokhttp3/MultipartReader$Part;", "Ljava/io/Closeable;", "Lokhttp3/Headers;", "headers", "Ll9/n;", "body", "<init>", "(Lokhttp3/Headers;Ll9/n;)V", "", "close", "()V", "Lokhttp3/Headers;", "()Lokhttp3/Headers;", "Ll9/n;", "()Ll9/n;", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Part implements Closeable {
        private final InterfaceC2244n body;
        private final Headers headers;

        public Part(Headers headers, InterfaceC2244n interfaceC2244n) {
            headers.getClass();
            interfaceC2244n.getClass();
            this.headers = headers;
            this.body = interfaceC2244n;
        }

        @JvmName(name = "body")
        /* JADX INFO: renamed from: body, reason: from getter */
        public final InterfaceC2244n getBody() {
            return this.body;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.body.close();
        }

        @JvmName(name = "headers")
        /* JADX INFO: renamed from: headers, reason: from getter */
        public final Headers getHeaders() {
            return this.headers;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0010¨\u0006\u0011"}, m3159d2 = {"Lokhttp3/MultipartReader$PartSource;", "Ll9/g0;", "<init>", "(Lokhttp3/MultipartReader;)V", "", "close", "()V", "Ll9/l;", "sink", "", "byteCount", "read", "(Ll9/l;J)J", "Ll9/j0;", "timeout", "()Ll9/j0;", "Ll9/j0;", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader$PartSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,210:1\n1#2:211\n268#3,26:212\n*S KotlinDebug\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader$PartSource\n*L\n159#1:212,26\n*E\n"})
    public final class PartSource implements InterfaceC2234g0 {
        private final C2240j0 timeout = new C2240j0();

        public PartSource() {
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (Intrinsics.areEqual(MultipartReader.this.currentPart, this)) {
                MultipartReader.this.currentPart = null;
            }
        }

        @Override // p130l9.InterfaceC2234g0
        public long read(C2242l sink, long byteCount) {
            sink.getClass();
            if (byteCount < 0) {
                C2237i.m3597d(AbstractC0074a.m157h(byteCount, "byteCount < 0: "));
                return 0L;
            }
            if (!Intrinsics.areEqual(MultipartReader.this.currentPart, this)) {
                C1929i.m3030l("closed");
                return 0L;
            }
            C2240j0 timeout = MultipartReader.this.source.getTimeout();
            C2240j0 c2240j0 = this.timeout;
            MultipartReader multipartReader = MultipartReader.this;
            long jTimeoutNanos = timeout.timeoutNanos();
            C2238i0 c2238i0 = C2240j0.Companion;
            long jTimeoutNanos2 = c2240j0.timeoutNanos();
            long jTimeoutNanos3 = timeout.timeoutNanos();
            c2238i0.getClass();
            if (jTimeoutNanos2 == 0 || (jTimeoutNanos3 != 0 && jTimeoutNanos2 >= jTimeoutNanos3)) {
                jTimeoutNanos2 = jTimeoutNanos3;
            }
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            timeout.timeout(jTimeoutNanos2, timeUnit);
            if (!timeout.hasDeadline()) {
                if (c2240j0.hasDeadline()) {
                    timeout.deadlineNanoTime(c2240j0.deadlineNanoTime());
                }
                try {
                    long jCurrentPartBytesRemaining = multipartReader.currentPartBytesRemaining(byteCount);
                    return jCurrentPartBytesRemaining == 0 ? -1L : multipartReader.source.read(sink, jCurrentPartBytesRemaining);
                } finally {
                    timeout.timeout(jTimeoutNanos, timeUnit);
                    if (c2240j0.hasDeadline()) {
                        timeout.clearDeadline();
                    }
                }
            }
            long jDeadlineNanoTime = timeout.deadlineNanoTime();
            if (c2240j0.hasDeadline()) {
                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), c2240j0.deadlineNanoTime()));
            }
            try {
                long jCurrentPartBytesRemaining2 = multipartReader.currentPartBytesRemaining(byteCount);
                return jCurrentPartBytesRemaining2 == 0 ? -1L : multipartReader.source.read(sink, jCurrentPartBytesRemaining2);
            } finally {
                timeout.timeout(jTimeoutNanos, timeUnit);
                if (c2240j0.hasDeadline()) {
                    timeout.deadlineNanoTime(jDeadlineNanoTime);
                }
            }
        }

        @Override // p130l9.InterfaceC2234g0
        /* JADX INFO: renamed from: timeout, reason: from getter */
        public C2240j0 getTimeout() {
            return this.timeout;
        }
    }

    static {
        int i10 = C2253w.f5897d;
        C2245o c2245o = C2245o.f5879e;
        afterBoundaryOptions = AbstractC2223b.m3573f(C3537c.m5648k(SocketClient.NETASCII_EOL), C3537c.m5648k("--"), C3537c.m5648k(" "), C3537c.m5648k("\t"));
    }

    public MultipartReader(InterfaceC2244n interfaceC2244n, String str) {
        interfaceC2244n.getClass();
        str.getClass();
        this.source = interfaceC2244n;
        this.boundary = str;
        C2242l c2242l = new C2242l();
        c2242l.m3630u0("--");
        c2242l.m3630u0(str);
        this.dashDashBoundary = c2242l.mo3562f(c2242l.f5878c);
        C2242l c2242l2 = new C2242l();
        c2242l2.m3630u0("\r\n--");
        c2242l2.m3630u0(str);
        this.crlfDashDashBoundary = c2242l2.mo3562f(c2242l2.f5878c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:44:0x0115  */
    /* JADX WARN: Code duplicated, block: B:46:0x012c  */
    public final long currentPartBytesRemaining(long maxResult) {
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        this.source.mo3555Y(this.crlfDashDashBoundary.mo3585c());
        C2242l c2242lMo3556a = this.source.mo3556a();
        C2245o c2245o = this.crlfDashDashBoundary;
        c2242lMo3556a.getClass();
        c2245o.getClass();
        if (c2245o.mo3585c() <= 0) {
            C1929i.m3029k("bytes is empty");
            return 0L;
        }
        C2224b0 c2224b0 = c2242lMo3556a.f5877b;
        if (c2224b0 != null) {
            long j15 = c2242lMo3556a.f5878c;
            long j16 = 0;
            if (j15 < 0) {
                while (j15 > 0) {
                    c2224b0 = c2224b0.f5855g;
                    c2224b0.getClass();
                    j15 -= (long) (c2224b0.f5851c - c2224b0.f5850b);
                }
                j10 = 1;
                byte[] bArrMo3587e = c2245o.mo3587e();
                byte b10 = bArrMo3587e[0];
                int iMo3585c = c2245o.mo3585c();
                j11 = -1;
                long j17 = (c2242lMo3556a.f5878c - ((long) iMo3585c)) + 1;
                while (true) {
                    if (j15 < j17) {
                        byte[] bArr = c2224b0.f5849a;
                        j12 = j15;
                        int iMin = (int) Math.min(c2224b0.f5851c, (((long) c2224b0.f5850b) + j17) - j12);
                        int i10 = (int) ((((long) c2224b0.f5850b) + j16) - j12);
                        while (true) {
                            if (i10 >= iMin) {
                                j16 = j12 + ((long) (c2224b0.f5851c - c2224b0.f5850b));
                                c2224b0 = c2224b0.f5854f;
                                c2224b0.getClass();
                                j15 = j16;
                            } else if (bArr[i10] == b10 && AbstractC2430a.m3785a(c2224b0, i10 + 1, bArrMo3587e, iMo3585c)) {
                                j13 = i10 - c2224b0.f5850b;
                                j14 = j13 + j12;
                            } else {
                                i10++;
                            }
                        }
                    }
                }
            } else {
                j10 = 1;
                j11 = -1;
                long j18 = 0;
                while (true) {
                    long j19 = ((long) (c2224b0.f5851c - c2224b0.f5850b)) + j18;
                    if (j19 > 0) {
                        break;
                    }
                    c2224b0 = c2224b0.f5854f;
                    c2224b0.getClass();
                    j18 = j19;
                }
                byte[] bArrMo3587e2 = c2245o.mo3587e();
                byte b11 = bArrMo3587e2[0];
                int iMo3585c2 = c2245o.mo3585c();
                long j20 = (c2242lMo3556a.f5878c - ((long) iMo3585c2)) + 1;
                while (true) {
                    if (j18 < j20) {
                        byte[] bArr2 = c2224b0.f5849a;
                        j12 = j18;
                        int iMin2 = (int) Math.min(c2224b0.f5851c, (((long) c2224b0.f5850b) + j20) - j12);
                        int i11 = (int) ((((long) c2224b0.f5850b) + j16) - j12);
                        while (true) {
                            if (i11 >= iMin2) {
                                j16 = j12 + ((long) (c2224b0.f5851c - c2224b0.f5850b));
                                c2224b0 = c2224b0.f5854f;
                                c2224b0.getClass();
                                j18 = j16;
                            } else if (bArr2[i11] == b11 && AbstractC2430a.m3785a(c2224b0, i11 + 1, bArrMo3587e2, iMo3585c2)) {
                                j13 = i11 - c2224b0.f5850b;
                                j14 = j13 + j12;
                            } else {
                                i11++;
                            }
                        }
                    }
                }
            }
            return j14 == j11 ? Math.min(maxResult, (this.source.mo3556a().f5878c - ((long) this.crlfDashDashBoundary.mo3585c())) + j10) : Math.min(maxResult, j14);
        }
        j10 = 1;
        j11 = -1;
        j14 = j11;
        if (j14 == j11) {
        }
    }

    @JvmName(name = "boundary")
    /* JADX INFO: renamed from: boundary, reason: from getter */
    public final String getBoundary() {
        return this.boundary;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.currentPart = null;
        this.source.close();
    }

    public final Part nextPart() throws ProtocolException {
        InterfaceC2244n interfaceC2244n;
        if (this.closed) {
            C1929i.m3030l("closed");
            return null;
        }
        if (this.noMoreParts) {
            return null;
        }
        if (this.partCount == 0 && this.source.mo3554Q(0L, this.dashDashBoundary)) {
            this.source.skip(this.dashDashBoundary.mo3585c());
        } else {
            while (true) {
                long jCurrentPartBytesRemaining = currentPartBytesRemaining(8192L);
                interfaceC2244n = this.source;
                if (jCurrentPartBytesRemaining == 0) {
                    break;
                }
                interfaceC2244n.skip(jCurrentPartBytesRemaining);
            }
            interfaceC2244n.skip(this.crlfDashDashBoundary.mo3585c());
        }
        boolean z9 = false;
        while (true) {
            int iMo3553P = this.source.mo3553P(afterBoundaryOptions);
            if (iMo3553P == -1) {
                throw new ProtocolException("unexpected characters after boundary");
            }
            if (iMo3553P == 0) {
                this.partCount++;
                Headers headers = new HeadersReader(this.source).readHeaders();
                PartSource partSource = new PartSource();
                this.currentPart = partSource;
                return new Part(headers, new C2222a0(partSource));
            }
            if (iMo3553P == 1) {
                if (z9) {
                    throw new ProtocolException("unexpected characters after boundary");
                }
                if (this.partCount == 0) {
                    throw new ProtocolException("expected at least 1 part");
                }
                this.noMoreParts = true;
                return null;
            }
            if (iMo3553P == 2 || iMo3553P == 3) {
                z9 = true;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, m3159d2 = {"Lokhttp3/MultipartReader$Companion;", "", "<init>", "()V", "Ll9/w;", "afterBoundaryOptions", "Ll9/w;", "getAfterBoundaryOptions", "()Ll9/w;", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C2253w getAfterBoundaryOptions() {
            return MultipartReader.afterBoundaryOptions;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MultipartReader(ResponseBody responseBody) throws ProtocolException {
        String strParameter;
        responseBody.getClass();
        InterfaceC2244n bodySource = responseBody.getBodySource();
        MediaType mediaType = responseBody.get$contentType();
        if (mediaType != null && (strParameter = mediaType.parameter("boundary")) != null) {
            this(bodySource, strParameter);
            return;
        }
        throw new ProtocolException("expected the Content-Type to have a boundary parameter");
    }
}
