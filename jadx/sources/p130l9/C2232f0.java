package p130l9;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;

/* JADX INFO: renamed from: l9.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2232f0 extends C2233g {

    /* JADX INFO: renamed from: a */
    public final Socket f5866a;

    public C2232f0(Socket socket) {
        socket.getClass();
        this.f5866a = socket;
    }

    @Override // p130l9.C2233g
    public final IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // p130l9.C2233g
    public final void timedOut() {
        Socket socket = this.f5866a;
        try {
            socket.close();
        } catch (AssertionError e) {
            if (!AbstractC2223b.m3572e(e)) {
                throw e;
            }
            AbstractC2252v.f5896a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e);
        } catch (Exception e6) {
            AbstractC2252v.f5896a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e6);
        }
    }
}
