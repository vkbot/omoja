package p047e0;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.example.navistart.LocServ;
import com.google.protobuf.AbstractC1178q;
import java.net.URL;
import okhttp3.Request;
import p006a5.C0023h;
import p078h0.C1652b;
import p094i7.C1761j;
import p094i7.C1764m;
import p094i7.C1770s;
import p094i7.EnumC1759h;
import p217v1.C3326d;

/* JADX INFO: renamed from: e0.h1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class AsyncTaskC1364h1 extends AsyncTask {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3260a = 0;

    /* JADX INFO: renamed from: b */
    public Object f3261b;

    public AsyncTaskC1364h1(C1764m c1764m) {
        this.f3261b = c1764m;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        switch (this.f3260a) {
            case 0:
                try {
                    return BitmapFactory.decodeStream(new URL(((String[]) objArr)[0]).openStream());
                } catch (Exception unused) {
                    return null;
                }
            default:
                if (C1761j.f4605f.booleanValue()) {
                    EnumC1759h enumC1759hM2881a = EnumC1759h.m2881a();
                    C1652b.m2750v(enumC1759hM2881a.name());
                    C1761j c1761j = ((C1764m) this.f3261b).f4621g;
                    c1761j.getClass();
                    String str = enumC1759hM2881a.f4601c;
                    C1761j.f4605f = Boolean.FALSE;
                    StringBuilder sb = new StringBuilder();
                    LocServ locServ = c1761j.f4608b;
                    sb.append(locServ.getFilesDir());
                    String strM2075i = AbstractC1178q.m2075i(new byte[]{29, 124, -13, -56, -105, 94, -87, 5, 66}, new byte[]{50, 24, -110, -68, -10, 112, -45, 108}, sb);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(locServ.getFilesDir());
                    String strM2075i2 = AbstractC1178q.m2075i(new byte[]{84, 99, 106, 1, -89, -59, 29, -124, 15}, new byte[]{123, 7, 11, 117, -58, -21, 105, -4}, sb2);
                    Request requestBuild = new Request.Builder().url(str).build();
                    C1652b.m2734a();
                    C1652b.m2743m().newCall(requestBuild).enqueue(new C0023h(c1761j, strM2075i, strM2075i2, 11, false));
                    C1770s c1770sM5244c = C3326d.m5242a().m5244c();
                    c1770sM5244c.f4639b.postValue(AbstractC1387m.m2421h(new byte[]{-100, 10, -109, 75, -38, 118, 117, -8, 108, 66, -3, 47, -69, 19, 25, -86, -14, 66, -15, 47, -79, 19, 17, -86, -15, 66, -5, 47, -65, -29, 116, -53, -100, 34, -109, 72, -37, 72, -118, 84, 98}, new byte[]{76, -110, 67, -1, 10, -61, -92, 122}));
                }
                return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Object obj) {
        switch (this.f3260a) {
            case 0:
                ((ImageView) this.f3261b).setImageBitmap((Bitmap) obj);
                break;
            default:
                super.onPostExecute(obj);
                break;
        }
    }

    public /* synthetic */ AsyncTaskC1364h1() {
    }
}
