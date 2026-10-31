package d7;

import android.bluetooth.BluetoothSocket;
import com.example.navistart.Transport.TransportService;
import f5.g;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1791b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9, Object obj) {
        this.f1791b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Callable
    public final Object call() throws IOException {
        int i9 = this.f1791b;
        Object obj = this.c;
        switch (i9) {
            case 0:
                return ((LinkedBlockingQueue) obj).peek();
            case 1:
                return ((g) obj).d;
            default:
                String str = TransportService.f852p;
                ((BluetoothSocket) obj).connect();
                return null;
        }
    }
}
