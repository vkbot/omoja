package l9;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class s extends j0 {
    public j0 a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s(j0 j0Var) {
        j0Var.getClass();
        this.a = j0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.j0
    public final j0 clearDeadline() {
        return this.a.clearDeadline();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.j0
    public final j0 clearTimeout() {
        return this.a.clearTimeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.j0
    public final long deadlineNanoTime() {
        return this.a.deadlineNanoTime();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.j0
    public final boolean hasDeadline() {
        return this.a.hasDeadline();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.j0
    public final void throwIfReached() throws InterruptedIOException {
        this.a.throwIfReached();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.j0
    public final j0 timeout(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.a.timeout(j, timeUnit);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.j0
    public final long timeoutNanos() {
        return this.a.timeoutNanos();
    }

    @Override // l9.j0
    public final j0 deadlineNanoTime(long j) {
        return this.a.deadlineNanoTime(j);
    }
}
