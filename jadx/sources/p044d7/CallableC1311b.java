package p044d7;

import android.bluetooth.BluetoothSocket;
import com.example.navistart.Transport.TransportService;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import p062f5.C1550g;

/* JADX INFO: renamed from: d7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class CallableC1311b implements Callable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3126b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3127c;

    public /* synthetic */ CallableC1311b(int i10, Object obj) {
        this.f3126b = i10;
        this.f3127c = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws IOException {
        int i10 = this.f3126b;
        Object obj = this.f3127c;
        switch (i10) {
            case 0:
                return ((LinkedBlockingQueue) obj).peek();
            case 1:
                return ((C1550g) obj).f3810d;
            default:
                String str = TransportService.f1653p;
                ((BluetoothSocket) obj).connect();
                return null;
        }
    }
}
