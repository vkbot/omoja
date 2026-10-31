package e0;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.example.navistart.LocServ;
import java.net.URL;
import okhttp3.Request;
import okhttp3.Request$Builder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h1 extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1856a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f1857b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h1(i7.m mVar) {
        this.f1857b = mVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        switch (this.f1856a) {
            case 0:
                try {
                    return BitmapFactory.decodeStream(new URL(((String[]) objArr)[0]).openStream());
                } catch (Exception unused) {
                    return null;
                }
            default:
                if (i7.j.f2691f.booleanValue()) {
                    i7.h hVarA = i7.h.a();
                    h0.b.v(hVarA.name());
                    i7.j jVar = ((i7.m) this.f1857b).f2701g;
                    jVar.getClass();
                    String str = hVarA.c;
                    i7.j.f2691f = Boolean.FALSE;
                    StringBuilder sb = new StringBuilder();
                    LocServ locServ = jVar.f2694b;
                    sb.append(locServ.getFilesDir());
                    String strI = com.google.protobuf.q.i(new byte[]{29, 124, -13, -56, -105, 94, -87, 5, 66}, new byte[]{50, 24, -110, -68, -10, 112, -45, 108}, sb);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(locServ.getFilesDir());
                    String strI2 = com.google.protobuf.q.i(new byte[]{84, 99, 106, 1, -89, -59, 29, -124, 15}, new byte[]{123, 7, 11, 117, -58, -21, 105, -4}, sb2);
                    Request requestBuild = new Request$Builder().url(str).build();
                    h0.b.a();
                    h0.b.m().newCall(requestBuild).enqueue(new a5.h(jVar, strI, strI2, 11, false));
                    i7.s sVarC = v1.d.a().c();
                    sVarC.f2713b.postValue(m.h(new byte[]{-100, 10, -109, 75, -38, 118, 117, -8, 108, 66, -3, 47, -69, 19, 25, -86, -14, 66, -15, 47, -79, 19, 17, -86, -15, 66, -5, 47, -65, -29, 116, -53, -100, 34, -109, 72, -37, 72, -118, 84, 98}, new byte[]{76, -110, 67, -1, 10, -61, -92, 122}));
                }
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.AsyncTask
    public void onPostExecute(Object obj) {
        switch (this.f1856a) {
            case 0:
                ((ImageView) this.f1857b).setImageBitmap((Bitmap) obj);
                break;
            default:
                super.onPostExecute(obj);
                break;
        }
    }

    public /* synthetic */ h1() {
    }
}
