package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.n;
import l9.o;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ/\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J5\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010!\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b!\u0010 J\u000f\u0010\"\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\"\u0010\tJ'\u0010&\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\n2\u0006\u0010$\u001a\u00020\f2\u0006\u0010%\u001a\u00020\fH\u0016¢\u0006\u0004\b&\u0010'J'\u0010+\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010/\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J/\u00104\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u00101\u001a\u00020\f2\u0006\u00102\u001a\u00020\f2\u0006\u00103\u001a\u00020\nH\u0016¢\u0006\u0004\b4\u00105J-\u00108\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u00106\u001a\u00020\f2\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0016¢\u0006\u0004\b8\u00109J?\u0010@\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020:2\u0006\u0010>\u001a\u00020\f2\u0006\u0010?\u001a\u00020-H\u0016¢\u0006\u0004\b@\u0010AR\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010B\u001a\u0004\bC\u0010D¨\u0006E"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "Lokhttp3/internal/http2/Http2Reader$Handler;", "Lkotlin/Function0;", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/http2/Http2Reader;", "reader", "<init>", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V", "invoke", "()V", HttpUrl.FRAGMENT_ENCODE_SET, "inFinished", HttpUrl.FRAGMENT_ENCODE_SET, "streamId", "Ll9/n;", "source", "length", "data", "(ZILl9/n;I)V", "associatedStreamId", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/http2/Header;", "headerBlock", "headers", "(ZIILjava/util/List;)V", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "rstStream", "(ILokhttp3/internal/http2/ErrorCode;)V", "clearPrevious", "Lokhttp3/internal/http2/Settings;", "settings", "(ZLokhttp3/internal/http2/Settings;)V", "applyAndAckSettings", "ackSettings", "ack", "payload1", "payload2", "ping", "(ZII)V", "lastGoodStreamId", "Ll9/o;", "debugData", "goAway", "(ILokhttp3/internal/http2/ErrorCode;Ll9/o;)V", HttpUrl.FRAGMENT_ENCODE_SET, "windowSizeIncrement", "windowUpdate", "(IJ)V", "streamDependency", "weight", "exclusive", "priority", "(IIIZ)V", "promisedStreamId", "requestHeaders", "pushPromise", "(IILjava/util/List;)V", HttpUrl.FRAGMENT_ENCODE_SET, "origin", "protocol", "host", "port", "maxAge", "alternateService", "(ILjava/lang/String;Ll9/o;Ljava/lang/String;IJ)V", "Lokhttp3/internal/http2/Http2Reader;", "getReader$okhttp", "()Lokhttp3/internal/http2/Http2Reader;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n+ 2 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Util.kt\nokhttp3/internal/Util\n*L\n1#1,1006:1\n90#2,13:1007\n90#2,13:1020\n90#2,13:1035\n90#2,13:1049\n37#3,2:1033\n37#3,2:1062\n563#4:1048\n563#4:1064\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n687#1:1007,13\n715#1:1020,13\n758#1:1035,13\n806#1:1049,13\n753#1:1033,2\n824#1:1062,2\n797#1:1048\n841#1:1064\n*E\n"})
public final class Http2Connection$ReaderRunnable implements Http2Reader$Handler, Function0<Unit> {
    private final Http2Reader reader;
    final /* synthetic */ Http2Connection this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Http2Connection$ReaderRunnable(Http2Connection http2Connection, Http2Reader http2Reader) {
        http2Reader.getClass();
        this.this$0 = http2Connection;
        this.reader = http2Reader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void alternateService(int streamId, String origin, o protocol, String host, int port, long maxAge) {
        origin.getClass();
        protocol.getClass();
        host.getClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void applyAndAckSettings(boolean clearPrevious, Settings settings) {
        long initialWindowSize;
        int i;
        Http2Stream[] http2StreamArr;
        settings.getClass();
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Http2Writer writer = this.this$0.getWriter();
        Http2Connection http2Connection = this.this$0;
        synchronized (writer) {
            synchronized (http2Connection) {
                try {
                    Settings peerSettings = http2Connection.getPeerSettings();
                    if (!clearPrevious) {
                        Settings settings2 = new Settings();
                        settings2.merge(peerSettings);
                        settings2.merge(settings);
                        settings = settings2;
                    }
                    ref$ObjectRef.element = settings;
                    initialWindowSize = ((long) settings.getInitialWindowSize()) - ((long) peerSettings.getInitialWindowSize());
                    http2StreamArr = (initialWindowSize == 0 || http2Connection.getStreams$okhttp().isEmpty()) ? null : (Http2Stream[]) http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                    http2Connection.setPeerSettings((Settings) ref$ObjectRef.element);
                    Http2Connection.access$getSettingsListenerQueue$p(http2Connection).schedule(new Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1(http2Connection.getConnectionName() + " onSettings", true, http2Connection, ref$ObjectRef), 0L);
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            try {
                http2Connection.getWriter().applyAndAckSettings((Settings) ref$ObjectRef.element);
            } catch (IOException e) {
                Http2Connection.access$failConnection(http2Connection, e);
            }
            Unit unit2 = Unit.INSTANCE;
        }
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                synchronized (http2Stream) {
                    http2Stream.addBytesToWriteWindow(initialWindowSize);
                    Unit unit3 = Unit.INSTANCE;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void data(boolean inFinished, int streamId, n source, int length) {
        source.getClass();
        boolean zPushedStream$okhttp = this.this$0.pushedStream$okhttp(streamId);
        Http2Connection http2Connection = this.this$0;
        if (zPushedStream$okhttp) {
            http2Connection.pushDataLater$okhttp(streamId, source, length, inFinished);
            return;
        }
        Http2Stream stream = http2Connection.getStream(streamId);
        if (stream == null) {
            this.this$0.writeSynResetLater$okhttp(streamId, ErrorCode.PROTOCOL_ERROR);
            long j = length;
            this.this$0.updateConnectionFlowControl$okhttp(j);
            source.skip(j);
            return;
        }
        stream.receiveData(source, length);
        if (inFinished) {
            stream.receiveHeaders(Util.EMPTY_HEADERS, true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getReader$okhttp, reason: from getter */
    public final Http2Reader getReader() {
        return this.reader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void goAway(int lastGoodStreamId, ErrorCode errorCode, o debugData) {
        int i;
        Object[] array;
        errorCode.getClass();
        debugData.getClass();
        debugData.c();
        Http2Connection http2Connection = this.this$0;
        synchronized (http2Connection) {
            array = http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
            Http2Connection.access$setShutdown$p(http2Connection, true);
            Unit unit = Unit.INSTANCE;
        }
        for (Http2Stream http2Stream : (Http2Stream[]) array) {
            if (http2Stream.getId() > lastGoodStreamId && http2Stream.isLocallyInitiated()) {
                http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                this.this$0.removeStream$okhttp(http2Stream.getId());
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void headers(boolean inFinished, int streamId, int associatedStreamId, List<Header> headerBlock) {
        headerBlock.getClass();
        boolean zPushedStream$okhttp = this.this$0.pushedStream$okhttp(streamId);
        Http2Connection http2Connection = this.this$0;
        if (zPushedStream$okhttp) {
            http2Connection.pushHeadersLater$okhttp(streamId, headerBlock, inFinished);
            return;
        }
        synchronized (http2Connection) {
            Http2Stream stream = http2Connection.getStream(streamId);
            if (stream != null) {
                Unit unit = Unit.INSTANCE;
                stream.receiveHeaders(Util.toHeaders(headerBlock), inFinished);
                return;
            }
            if (Http2Connection.access$isShutdown$p(http2Connection)) {
                return;
            }
            if (streamId <= http2Connection.getLastGoodStreamId()) {
                return;
            }
            if (streamId % 2 == http2Connection.getNextStreamId() % 2) {
                return;
            }
            Http2Stream http2Stream = new Http2Stream(streamId, http2Connection, false, inFinished, Util.toHeaders(headerBlock));
            http2Connection.setLastGoodStreamId$okhttp(streamId);
            http2Connection.getStreams$okhttp().put(Integer.valueOf(streamId), http2Stream);
            Http2Connection.access$getTaskRunner$p(http2Connection).newQueue().schedule(new Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1(http2Connection.getConnectionName() + '[' + streamId + "] onStream", true, http2Connection, http2Stream), 0L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:11:0x0020 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:23:0x0003 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: okhttp3.internal.http2.ErrorCode */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: okhttp3.internal.http2.ErrorCode */
    /* JADX DEBUG: Multi-variable search result rejected for r2v10, resolved type: okhttp3.internal.http2.ErrorCode */
    /* JADX DEBUG: Multi-variable search result rejected for r2v11, resolved type: okhttp3.internal.http2.ErrorCode */
    /* JADX DEBUG: Multi-variable search result rejected for r2v2, resolved type: okhttp3.internal.http2.ErrorCode */
    /* JADX DEBUG: Multi-variable search result rejected for r2v5, resolved type: okhttp3.internal.http2.ErrorCode */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.internal.http2.ErrorCode] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Closeable, okhttp3.internal.http2.Http2Reader] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
    public void m317invoke() throws Throwable {
        ErrorCode errorCode;
        ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
        IOException e = null;
        try {
            try {
                this.reader.readConnectionPreface(this);
                while (this.reader.nextFrame(false, this)) {
                }
                ErrorCode errorCode3 = ErrorCode.NO_ERROR;
                try {
                    this.this$0.close$okhttp(errorCode3, ErrorCode.CANCEL, null);
                    errorCode = errorCode3;
                } catch (IOException e2) {
                    e = e2;
                    ErrorCode errorCode4 = ErrorCode.PROTOCOL_ERROR;
                    Http2Connection http2Connection = this.this$0;
                    http2Connection.close$okhttp(errorCode4, errorCode4, e);
                    errorCode = http2Connection;
                }
            } catch (Throwable th) {
                th = th;
                this.this$0.close$okhttp(errorCode, errorCode2, e);
                Util.closeQuietly(this.reader);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            errorCode = errorCode2;
            this.this$0.close$okhttp(errorCode, errorCode2, e);
            Util.closeQuietly(this.reader);
            throw th;
        }
        errorCode2 = this.reader;
        Util.closeQuietly((Closeable) errorCode2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void ping(boolean ack, int payload1, int payload2) {
        Http2Connection http2Connection = this.this$0;
        if (!ack) {
            Http2Connection.access$getWriterQueue$p(http2Connection).schedule(new Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1(this.this$0.getConnectionName() + " ping", true, this.this$0, payload1, payload2), 0L);
            return;
        }
        synchronized (http2Connection) {
            try {
                if (payload1 == 1) {
                    Http2Connection.access$setIntervalPongsReceived$p(http2Connection, Http2Connection.access$getIntervalPongsReceived$p(http2Connection) + 1);
                } else if (payload1 != 2) {
                    if (payload1 == 3) {
                        Http2Connection.access$setAwaitPongsReceived$p(http2Connection, Http2Connection.access$getAwaitPongsReceived$p(http2Connection) + 1);
                        http2Connection.getClass();
                        http2Connection.notifyAll();
                    }
                    Unit unit = Unit.INSTANCE;
                } else {
                    Http2Connection.access$setDegradedPongsReceived$p(http2Connection, Http2Connection.access$getDegradedPongsReceived$p(http2Connection) + 1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void pushPromise(int streamId, int promisedStreamId, List<Header> requestHeaders) throws Throwable {
        requestHeaders.getClass();
        this.this$0.pushRequestLater$okhttp(promisedStreamId, requestHeaders);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void rstStream(int streamId, ErrorCode errorCode) {
        errorCode.getClass();
        boolean zPushedStream$okhttp = this.this$0.pushedStream$okhttp(streamId);
        Http2Connection http2Connection = this.this$0;
        if (zPushedStream$okhttp) {
            http2Connection.pushResetLater$okhttp(streamId, errorCode);
            return;
        }
        Http2Stream http2StreamRemoveStream$okhttp = http2Connection.removeStream$okhttp(streamId);
        if (http2StreamRemoveStream$okhttp != null) {
            http2StreamRemoveStream$okhttp.receiveRstStream(errorCode);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void settings(boolean clearPrevious, Settings settings) {
        settings.getClass();
        Http2Connection.access$getWriterQueue$p(this.this$0).schedule(new Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1(this.this$0.getConnectionName() + " applyAndAckSettings", true, this, clearPrevious, settings), 0L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void windowUpdate(int streamId, long windowSizeIncrement) {
        Http2Connection http2Connection = this.this$0;
        if (streamId == 0) {
            synchronized (http2Connection) {
                Http2Connection.access$setWriteBytesMaximum$p(http2Connection, http2Connection.getWriteBytesMaximum() + windowSizeIncrement);
                http2Connection.notifyAll();
                Unit unit = Unit.INSTANCE;
            }
            return;
        }
        Http2Stream stream = http2Connection.getStream(streamId);
        if (stream != null) {
            synchronized (stream) {
                stream.addBytesToWriteWindow(windowSizeIncrement);
                Unit unit2 = Unit.INSTANCE;
            }
        }
    }

    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void ackSettings() {
    }

    public /* bridge */ /* synthetic */ Object invoke() throws Throwable {
        m317invoke();
        return Unit.INSTANCE;
    }

    @Override // okhttp3.internal.http2.Http2Reader$Handler
    public void priority(int streamId, int streamDependency, int weight, boolean exclusive) {
    }
}
