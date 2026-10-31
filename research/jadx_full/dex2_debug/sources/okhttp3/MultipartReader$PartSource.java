package okhttp3;

import ai.onnxruntime.a;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.g0;
import l9.i;
import l9.i0;
import l9.j0;
import l9.l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/MultipartReader$PartSource;", "Ll9/g0;", "<init>", "(Lokhttp3/MultipartReader;)V", HttpUrl.FRAGMENT_ENCODE_SET, "close", "()V", "Ll9/l;", "sink", HttpUrl.FRAGMENT_ENCODE_SET, "byteCount", "read", "(Ll9/l;J)J", "Ll9/j0;", "timeout", "()Ll9/j0;", "Ll9/j0;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader$PartSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,210:1\n1#2:211\n268#3,26:212\n*S KotlinDebug\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader$PartSource\n*L\n159#1:212,26\n*E\n"})
public final class MultipartReader$PartSource implements g0 {
    final /* synthetic */ MultipartReader this$0;
    private final j0 timeout = new j0();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public MultipartReader$PartSource(MultipartReader multipartReader) {
        this.this$0 = multipartReader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (Intrinsics.areEqual(MultipartReader.access$getCurrentPart$p(this.this$0), this)) {
            MultipartReader.access$setCurrentPart$p(this.this$0, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    public long read(l sink, long byteCount) {
        sink.getClass();
        if (byteCount < 0) {
            i.d(a.h(byteCount, "byteCount < 0: "));
            return 0L;
        }
        if (!Intrinsics.areEqual(MultipartReader.access$getCurrentPart$p(this.this$0), this)) {
            j1.i.l("closed");
            return 0L;
        }
        j0 timeout = MultipartReader.access$getSource$p(this.this$0).getTimeout();
        j0 j0Var = this.timeout;
        MultipartReader multipartReader = this.this$0;
        long jTimeoutNanos = timeout.timeoutNanos();
        i0 i0Var = j0.Companion;
        long jTimeoutNanos2 = j0Var.timeoutNanos();
        long jTimeoutNanos3 = timeout.timeoutNanos();
        i0Var.getClass();
        if (jTimeoutNanos2 == 0 || (jTimeoutNanos3 != 0 && jTimeoutNanos2 >= jTimeoutNanos3)) {
            jTimeoutNanos2 = jTimeoutNanos3;
        }
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout.timeout(jTimeoutNanos2, timeUnit);
        if (!timeout.hasDeadline()) {
            if (j0Var.hasDeadline()) {
                timeout.deadlineNanoTime(j0Var.deadlineNanoTime());
            }
            try {
                long jAccess$currentPartBytesRemaining = MultipartReader.access$currentPartBytesRemaining(multipartReader, byteCount);
                return jAccess$currentPartBytesRemaining == 0 ? -1L : MultipartReader.access$getSource$p(multipartReader).read(sink, jAccess$currentPartBytesRemaining);
            } finally {
                timeout.timeout(jTimeoutNanos, timeUnit);
                if (j0Var.hasDeadline()) {
                    timeout.clearDeadline();
                }
            }
        }
        long jDeadlineNanoTime = timeout.deadlineNanoTime();
        if (j0Var.hasDeadline()) {
            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), j0Var.deadlineNanoTime()));
        }
        try {
            long jAccess$currentPartBytesRemaining2 = MultipartReader.access$currentPartBytesRemaining(multipartReader, byteCount);
            return jAccess$currentPartBytesRemaining2 == 0 ? -1L : MultipartReader.access$getSource$p(multipartReader).read(sink, jAccess$currentPartBytesRemaining2);
        } finally {
            timeout.timeout(jTimeoutNanos, timeUnit);
            if (j0Var.hasDeadline()) {
                timeout.deadlineNanoTime(jDeadlineNanoTime);
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
