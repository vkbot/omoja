package okhttp3;

import j1.i;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.a0;
import l9.b;
import l9.b0;
import l9.l;
import l9.n;
import l9.o;
import l9.w;
import m9.a;
import okhttp3.internal.http1.HeadersReader;
import org.apache.commons.net.SocketClient;
import w7.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 &2\u00020\u0001:\u0003&'(B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nJ\u0017\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0005\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010!R\u001c\u0010$\u001a\b\u0018\u00010#R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006)"}, d2 = {"Lokhttp3/MultipartReader;", "Ljava/io/Closeable;", "Ll9/n;", "source", HttpUrl.FRAGMENT_ENCODE_SET, "boundary", "<init>", "(Ll9/n;Ljava/lang/String;)V", "Lokhttp3/ResponseBody;", "response", "(Lokhttp3/ResponseBody;)V", HttpUrl.FRAGMENT_ENCODE_SET, "maxResult", "currentPartBytesRemaining", "(J)J", "Lokhttp3/MultipartReader$Part;", "nextPart", "()Lokhttp3/MultipartReader$Part;", HttpUrl.FRAGMENT_ENCODE_SET, "close", "()V", "Ll9/n;", "Ljava/lang/String;", "()Ljava/lang/String;", "Ll9/o;", "dashDashBoundary", "Ll9/o;", "crlfDashDashBoundary", HttpUrl.FRAGMENT_ENCODE_SET, "partCount", "I", HttpUrl.FRAGMENT_ENCODE_SET, "closed", "Z", "noMoreParts", "Lokhttp3/MultipartReader$PartSource;", "currentPart", "Lokhttp3/MultipartReader$PartSource;", "Companion", "Part", "PartSource", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"})
public final class MultipartReader implements Closeable {
    public static final MultipartReader$Companion Companion = new MultipartReader$Companion(null);
    private static final w afterBoundaryOptions;
    private final String boundary;
    private boolean closed;
    private final o crlfDashDashBoundary;
    private MultipartReader$PartSource currentPart;
    private final o dashDashBoundary;
    private boolean noMoreParts;
    private int partCount;
    private final n source;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int i = w.d;
        o oVar = o.e;
        afterBoundaryOptions = b.f(c.k(SocketClient.NETASCII_EOL), c.k("--"), c.k(" "), c.k("\t"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MultipartReader(n nVar, String str) {
        nVar.getClass();
        str.getClass();
        this.source = nVar;
        this.boundary = str;
        l lVar = new l();
        lVar.u0("--");
        lVar.u0(str);
        this.dashDashBoundary = lVar.f(lVar.c);
        l lVar2 = new l();
        lVar2.u0("\r\n--");
        lVar2.u0(str);
        this.crlfDashDashBoundary = lVar2.f(lVar2.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$currentPartBytesRemaining(MultipartReader multipartReader, long j) {
        return multipartReader.currentPartBytesRemaining(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ w access$getAfterBoundaryOptions$cp() {
        return afterBoundaryOptions;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ MultipartReader$PartSource access$getCurrentPart$p(MultipartReader multipartReader) {
        return multipartReader.currentPart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ n access$getSource$p(MultipartReader multipartReader) {
        return multipartReader.source;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setCurrentPart$p(MultipartReader multipartReader, MultipartReader$PartSource multipartReader$PartSource) {
        multipartReader.currentPart = multipartReader$PartSource;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:44:0x0115  */
    /* JADX WARN: Code duplicated, block: B:46:0x012c  */
    private final long currentPartBytesRemaining(long maxResult) {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        this.source.Y(this.crlfDashDashBoundary.c());
        l lVarA = this.source.a();
        o oVar = this.crlfDashDashBoundary;
        lVarA.getClass();
        oVar.getClass();
        if (oVar.c() <= 0) {
            i.k("bytes is empty");
            return 0L;
        }
        b0 b0Var = lVarA.b;
        if (b0Var != null) {
            long j6 = lVarA.c;
            long j7 = 0;
            if (j6 < 0) {
                while (j6 > 0) {
                    b0Var = b0Var.g;
                    b0Var.getClass();
                    j6 -= (long) (b0Var.c - b0Var.b);
                }
                j = 1;
                byte[] bArrE = oVar.e();
                byte b = bArrE[0];
                int iC = oVar.c();
                j2 = -1;
                long j8 = (lVarA.c - ((long) iC)) + 1;
                while (true) {
                    if (j6 < j8) {
                        byte[] bArr = b0Var.a;
                        j3 = j6;
                        int iMin = (int) Math.min(b0Var.c, (((long) b0Var.b) + j8) - j3);
                        int i = (int) ((((long) b0Var.b) + j7) - j3);
                        while (true) {
                            if (i >= iMin) {
                                j7 = j3 + ((long) (b0Var.c - b0Var.b));
                                b0Var = b0Var.f;
                                b0Var.getClass();
                                j6 = j7;
                            } else if (bArr[i] == b && a.a(b0Var, i + 1, bArrE, iC)) {
                                j4 = i - b0Var.b;
                                j5 = j4 + j3;
                            } else {
                                i++;
                            }
                        }
                    }
                }
            } else {
                j = 1;
                j2 = -1;
                long j10 = 0;
                while (true) {
                    long j11 = ((long) (b0Var.c - b0Var.b)) + j10;
                    if (j11 > 0) {
                        break;
                    }
                    b0Var = b0Var.f;
                    b0Var.getClass();
                    j10 = j11;
                }
                byte[] bArrE2 = oVar.e();
                byte b2 = bArrE2[0];
                int iC2 = oVar.c();
                long j12 = (lVarA.c - ((long) iC2)) + 1;
                while (true) {
                    if (j10 < j12) {
                        byte[] bArr2 = b0Var.a;
                        j3 = j10;
                        int iMin2 = (int) Math.min(b0Var.c, (((long) b0Var.b) + j12) - j3);
                        int i2 = (int) ((((long) b0Var.b) + j7) - j3);
                        while (true) {
                            if (i2 >= iMin2) {
                                j7 = j3 + ((long) (b0Var.c - b0Var.b));
                                b0Var = b0Var.f;
                                b0Var.getClass();
                                j10 = j7;
                            } else if (bArr2[i2] == b2 && a.a(b0Var, i2 + 1, bArrE2, iC2)) {
                                j4 = i2 - b0Var.b;
                                j5 = j4 + j3;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
            }
            return j5 == j2 ? Math.min(maxResult, (this.source.a().c - ((long) this.crlfDashDashBoundary.c())) + j) : Math.min(maxResult, j5);
        }
        j = 1;
        j2 = -1;
        j5 = j2;
        if (j5 == j2) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmName(name = "boundary")
    /* JADX INFO: renamed from: boundary, reason: from getter */
    public final String getBoundary() {
        return this.boundary;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.currentPart = null;
        this.source.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final MultipartReader$Part nextPart() throws ProtocolException {
        n nVar;
        if (this.closed) {
            i.l("closed");
            return null;
        }
        if (this.noMoreParts) {
            return null;
        }
        if (this.partCount == 0 && this.source.Q(0L, this.dashDashBoundary)) {
            this.source.skip(this.dashDashBoundary.c());
        } else {
            while (true) {
                long jCurrentPartBytesRemaining = currentPartBytesRemaining(8192L);
                nVar = this.source;
                if (jCurrentPartBytesRemaining == 0) {
                    break;
                }
                nVar.skip(jCurrentPartBytesRemaining);
            }
            nVar.skip(this.crlfDashDashBoundary.c());
        }
        boolean z = false;
        while (true) {
            int iP = this.source.P(afterBoundaryOptions);
            if (iP == -1) {
                throw new ProtocolException("unexpected characters after boundary");
            }
            if (iP == 0) {
                this.partCount++;
                Headers headers = new HeadersReader(this.source).readHeaders();
                MultipartReader$PartSource multipartReader$PartSource = new MultipartReader$PartSource(this);
                this.currentPart = multipartReader$PartSource;
                return new MultipartReader$Part(headers, new a0(multipartReader$PartSource));
            }
            if (iP == 1) {
                if (z) {
                    throw new ProtocolException("unexpected characters after boundary");
                }
                if (this.partCount == 0) {
                    throw new ProtocolException("expected at least 1 part");
                }
                this.noMoreParts = true;
                return null;
            }
            if (iP == 2 || iP == 3) {
                z = true;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MultipartReader(ResponseBody responseBody) throws ProtocolException {
        String strParameter;
        responseBody.getClass();
        n nVar = responseBody.get$this_asResponseBody();
        MediaType mediaType = responseBody.get$contentType();
        if (mediaType != null && (strParameter = mediaType.parameter("boundary")) != null) {
            this(nVar, strParameter);
            return;
        }
        throw new ProtocolException("expected the Content-Type to have a boundary parameter");
    }
}
