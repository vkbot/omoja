package okhttp3.internal.http2;

import ai.onnxruntime.a;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import l9.n;
import l9.o;
import n0.b;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 .2\u00020\u0001:\u0003./0B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J5\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J/\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0016\u0010\u0010J/\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0017\u0010\u0010J\u001f\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J/\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0019\u0010\u0010J/\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001a\u0010\u0010J/\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001b\u0010\u0010J/\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001c\u0010\u0010J/\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001d\u0010\u0010J/\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001e\u0010\u0010J\u0015\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u000eH\u0016¢\u0006\u0004\b$\u0010%R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010&R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010'R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010,\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-¨\u00061"}, d2 = {"Lokhttp3/internal/http2/Http2Reader;", "Ljava/io/Closeable;", "Ll9/n;", "source", HttpUrl.FRAGMENT_ENCODE_SET, "client", "<init>", "(Ll9/n;Z)V", "Lokhttp3/internal/http2/Http2Reader$Handler;", "handler", HttpUrl.FRAGMENT_ENCODE_SET, "length", "flags", "streamId", HttpUrl.FRAGMENT_ENCODE_SET, "readHeaders", "(Lokhttp3/internal/http2/Http2Reader$Handler;III)V", "padding", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/http2/Header;", "readHeaderBlock", "(IIII)Ljava/util/List;", "readData", "readPriority", "(Lokhttp3/internal/http2/Http2Reader$Handler;I)V", "readRstStream", "readSettings", "readPushPromise", "readPing", "readGoAway", "readWindowUpdate", "readConnectionPreface", "(Lokhttp3/internal/http2/Http2Reader$Handler;)V", "requireSettings", "nextFrame", "(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z", "close", "()V", "Ll9/n;", "Z", "Lokhttp3/internal/http2/Http2Reader$ContinuationSource;", "continuation", "Lokhttp3/internal/http2/Http2Reader$ContinuationSource;", "Lokhttp3/internal/http2/Hpack$Reader;", "hpackReader", "Lokhttp3/internal/http2/Hpack$Reader;", "Companion", "ContinuationSource", "Handler", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Http2Reader implements Closeable {
    public static final Http2Reader$Companion Companion = new Http2Reader$Companion(null);
    private static final Logger logger;
    private final boolean client;
    private final Http2Reader$ContinuationSource continuation;
    private final Hpack$Reader hpackReader;
    private final n source;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Logger logger2 = Logger.getLogger(Http2.class.getName());
        logger2.getClass();
        logger = logger2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Http2Reader(n nVar, boolean z) {
        nVar.getClass();
        this.source = nVar;
        this.client = z;
        Http2Reader$ContinuationSource http2Reader$ContinuationSource = new Http2Reader$ContinuationSource(nVar);
        this.continuation = http2Reader$ContinuationSource;
        this.hpackReader = new Hpack$Reader(http2Reader$ContinuationSource, 4096, 0, 4, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Logger access$getLogger$cp() {
        return logger;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readData(Http2Reader$Handler handler, int length, int flags, int streamId) {
        if (streamId == 0) {
            b.A("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
            return;
        }
        boolean z = (flags & 1) != 0;
        if ((flags & 32) != 0) {
            b.A("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
            return;
        }
        int iAnd = (flags & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        handler.data(z, streamId, this.source, Companion.lengthWithoutPadding(length, flags, iAnd));
        this.source.skip(iAnd);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readGoAway(Http2Reader$Handler handler, int length, int flags, int streamId) {
        if (length < 8) {
            b.A(a.e(length, "TYPE_GOAWAY length < 8: "));
            return;
        }
        if (streamId != 0) {
            b.A("TYPE_GOAWAY streamId != 0");
            return;
        }
        int i = this.source.readInt();
        int i2 = this.source.readInt();
        int i3 = length - 8;
        ErrorCode errorCodeFromHttp2 = ErrorCode.Companion.fromHttp2(i2);
        if (errorCodeFromHttp2 == null) {
            b.A(a.e(i2, "TYPE_GOAWAY unexpected error code: "));
            return;
        }
        o oVarF = o.e;
        if (i3 > 0) {
            oVarF = this.source.f(i3);
        }
        handler.goAway(i, errorCodeFromHttp2, oVarF);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final List<Header> readHeaderBlock(int length, int padding, int flags, int streamId) {
        this.continuation.setLeft(length);
        Http2Reader$ContinuationSource http2Reader$ContinuationSource = this.continuation;
        http2Reader$ContinuationSource.setLength(http2Reader$ContinuationSource.getLeft());
        this.continuation.setPadding(padding);
        this.continuation.setFlags(flags);
        this.continuation.setStreamId(streamId);
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readHeaders(Http2Reader$Handler handler, int length, int flags, int streamId) {
        if (streamId == 0) {
            b.A("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
            return;
        }
        boolean z = (flags & 1) != 0;
        int iAnd = (flags & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        if ((flags & 32) != 0) {
            readPriority(handler, streamId);
            length -= 5;
        }
        handler.headers(z, streamId, -1, readHeaderBlock(Companion.lengthWithoutPadding(length, flags, iAnd), iAnd, flags, streamId));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readPing(Http2Reader$Handler handler, int length, int flags, int streamId) {
        if (length != 8) {
            b.A(a.e(length, "TYPE_PING length != 8: "));
        } else {
            if (streamId != 0) {
                b.A("TYPE_PING streamId != 0");
                return;
            }
            handler.ping((flags & 1) != 0, this.source.readInt(), this.source.readInt());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readPriority(Http2Reader$Handler handler, int streamId) {
        int i = this.source.readInt();
        handler.priority(streamId, i & Integer.MAX_VALUE, Util.and(this.source.readByte(), 255) + 1, (Integer.MIN_VALUE & i) != 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readPushPromise(Http2Reader$Handler handler, int length, int flags, int streamId) {
        if (streamId == 0) {
            b.A("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
        } else {
            int iAnd = (flags & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
            handler.pushPromise(streamId, this.source.readInt() & Integer.MAX_VALUE, readHeaderBlock(Companion.lengthWithoutPadding(length - 4, flags, iAnd), iAnd, flags, streamId));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readRstStream(Http2Reader$Handler handler, int length, int flags, int streamId) {
        if (length != 4) {
            b.A(a.f(length, "TYPE_RST_STREAM length: ", " != 4"));
            return;
        }
        if (streamId == 0) {
            b.A("TYPE_RST_STREAM streamId == 0");
            return;
        }
        int i = this.source.readInt();
        ErrorCode errorCodeFromHttp2 = ErrorCode.Companion.fromHttp2(i);
        if (errorCodeFromHttp2 != null) {
            handler.rstStream(streamId, errorCodeFromHttp2);
        } else {
            b.A(a.e(i, "TYPE_RST_STREAM unexpected error code: "));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readSettings(Http2Reader$Handler handler, int length, int flags, int streamId) {
        if (streamId != 0) {
            b.A("TYPE_SETTINGS streamId != 0");
            return;
        }
        if ((flags & 1) != 0) {
            if (length == 0) {
                handler.ackSettings();
                return;
            } else {
                b.A("FRAME_SIZE_ERROR ack frame should be empty!");
                return;
            }
        }
        if (length % 6 != 0) {
            b.A(a.e(length, "TYPE_SETTINGS length % 6 != 0: "));
            return;
        }
        Settings settings = new Settings();
        IntProgression intProgressionD = RangesKt.d(RangesKt.until(0, length), 6);
        int first = intProgressionD.getFirst();
        int last = intProgressionD.getLast();
        int step = intProgressionD.getStep();
        if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
            while (true) {
                int iAnd = Util.and(this.source.readShort(), Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                int i = this.source.readInt();
                if (iAnd != 2) {
                    if (iAnd == 3) {
                        iAnd = 4;
                    } else if (iAnd != 4) {
                        if (iAnd == 5 && (i < 16384 || i > 16777215)) {
                            b.A(a.e(i, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
                            return;
                        }
                    } else {
                        if (i < 0) {
                            b.A("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                            return;
                        }
                        iAnd = 7;
                    }
                } else if (i != 0 && i != 1) {
                    b.A("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                    return;
                }
                settings.set(iAnd, i);
                if (first != last) {
                    first += step;
                }
            }
        }
        handler.settings(false, settings);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readWindowUpdate(Http2Reader$Handler handler, int length, int flags, int streamId) {
        if (length != 4) {
            b.A(a.e(length, "TYPE_WINDOW_UPDATE length !=4: "));
            return;
        }
        long jAnd = Util.and(this.source.readInt(), 2147483647L);
        if (jAnd != 0) {
            handler.windowUpdate(streamId, jAnd);
        } else {
            b.A("windowSizeIncrement was 0");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean nextFrame(boolean requireSettings, Http2Reader$Handler handler) {
        handler.getClass();
        try {
            this.source.Y(9L);
            int medium = Util.readMedium(this.source);
            if (medium > 16384) {
                b.A(a.e(medium, "FRAME_SIZE_ERROR: "));
                return false;
            }
            int iAnd = Util.and(this.source.readByte(), 255);
            int iAnd2 = Util.and(this.source.readByte(), 255);
            int i = this.source.readInt() & Integer.MAX_VALUE;
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine(Http2.INSTANCE.frameLog(true, i, medium, iAnd, iAnd2));
            }
            if (requireSettings && iAnd != 4) {
                ai.onnxruntime.b.w(Http2.INSTANCE.formattedType$okhttp(iAnd), "Expected a SETTINGS frame but was ");
                return false;
            }
            switch (iAnd) {
                case 0:
                    readData(handler, medium, iAnd2, i);
                    return true;
                case 1:
                    readHeaders(handler, medium, iAnd2, i);
                    return true;
                case 2:
                    readPriority(handler, medium, iAnd2, i);
                    return true;
                case 3:
                    readRstStream(handler, medium, iAnd2, i);
                    return true;
                case 4:
                    readSettings(handler, medium, iAnd2, i);
                    return true;
                case 5:
                    readPushPromise(handler, medium, iAnd2, i);
                    return true;
                case 6:
                    readPing(handler, medium, iAnd2, i);
                    return true;
                case 7:
                    readGoAway(handler, medium, iAnd2, i);
                    return true;
                case 8:
                    readWindowUpdate(handler, medium, iAnd2, i);
                    return true;
                default:
                    this.source.skip(medium);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void readConnectionPreface(Http2Reader$Handler handler) {
        handler.getClass();
        if (this.client) {
            if (nextFrame(true, handler)) {
                return;
            }
            b.A("Required SETTINGS preface not received");
            return;
        }
        n nVar = this.source;
        o oVar = Http2.CONNECTION_PREFACE;
        o oVarF = nVar.f(oVar.c());
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Util.format("<< CONNECTION " + oVarF.d(), new Object[0]));
        }
        if (Intrinsics.areEqual(oVar, oVarF)) {
            return;
        }
        b.A("Expected a connection header but was ".concat(oVarF.l()));
    }

    private final void readPriority(Http2Reader$Handler handler, int length, int flags, int streamId) {
        if (length != 5) {
            b.A(a.f(length, "TYPE_PRIORITY length: ", " != 5"));
        } else if (streamId != 0) {
            readPriority(handler, streamId);
        } else {
            b.A("TYPE_PRIORITY streamId == 0");
        }
    }
}
