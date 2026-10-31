package b1;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build$VERSION;
import android.util.Log;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f229b;
    public final /* synthetic */ f c;
    public final /* synthetic */ r d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(f fVar, r rVar, int i9) {
        this.f229b = i9;
        this.c = fVar;
        this.d = rVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f229b) {
            case 0:
                f fVar = this.c;
                fVar.e.remove(this.d);
                if (fVar.e.isEmpty()) {
                    fVar.f239b.removeCallbacks(fVar.f249o);
                    fVar.f239b.removeCallbacks(fVar.f250p);
                    fVar.c();
                    if (fVar.f248n) {
                        try {
                            fVar.f238a.unregisterReceiver(fVar.f251q);
                            break;
                        } catch (IllegalArgumentException unused) {
                        }
                        fVar.f248n = false;
                    }
                    fVar.f242h = null;
                    fVar.f243i = 0L;
                }
                break;
            default:
                f fVar2 = this.c;
                r rVar = this.d;
                boolean zIsEmpty = fVar2.e.isEmpty();
                if (fVar2.e.size() != 1 || !fVar2.e.contains(rVar)) {
                    int size = fVar2.e.size();
                    fVar2.e.clear();
                    fVar2.e.add(rVar);
                    if (size > 0) {
                        Log.i(f.f234s, e0.m.h(new byte[]{34, 83, -64, -127, -68, -71, 59, 59, 80, 69, -60, -116, -79, -65, 126, 50, 25, 88, -39, -64, -80, -69, 46, ByteCompanionObject.MAX_VALUE, 28, 95, -61, -103, -72, -76, 59, 45, 3, 11}, new byte[]{112, 54, -80, -19, -35, -38, 94, 95}) + size);
                    }
                    byte[] bArr = fVar2.f242h;
                    if (bArr != null) {
                        try {
                            rVar.k(bArr, fVar2.f243i);
                        } catch (RuntimeException e) {
                            Log.w(f.f234s, e0.m.h(new byte[]{26, 119, -127, 8, -116, 80, -94, 88, 119, 114, -122, 18, -43, 88, -83, 77, 37, 62, -99, 4, -53, 88, -96, 92, 50, 122, -49, 2, -64, 94, -85, 77, 51, 62, -119, 19, -64, 80, -90}, new byte[]{87, 30, -17, 97, -95, Base64.padSymbol, -61, 40}), e);
                        }
                    }
                    if (zIsEmpty) {
                        c cVar = fVar2.f251q;
                        if (!fVar2.f248n) {
                            IntentFilter intentFilter = new IntentFilter(f.w);
                            int i9 = Build$VERSION.SDK_INT;
                            Context context = fVar2.f238a;
                            if (i9 >= 33) {
                                androidx.core.graphics.a.u(context, cVar, intentFilter);
                            } else {
                                context.registerReceiver(cVar, intentFilter);
                            }
                            fVar2.f248n = true;
                        }
                    }
                    fVar2.d();
                }
                break;
        }
    }
}
