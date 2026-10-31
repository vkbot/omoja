package v0;

import android.content.Context;
import android.location.Location;
import android.os.Build$VERSION;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager$LayoutParams;
import android.webkit.WebView;
import android.widget.FrameLayout;
import b1.o;
import b1.r;
import b1.t;
import b1.u;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.cores.HUDMassageObj;
import e0.m;
import java.io.File;
import java.io.IOException;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i extends FrameLayout implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r f5506b;
    public final WindowManager$LayoutParams c;
    public final t d;
    public WebView e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(SpeedBoardService speedBoardService, t tVar) {
        super(speedBoardService, null);
        this.d = tVar;
        WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(-1, -1, Build$VERSION.SDK_INT >= 26 ? 2038 : 2002, 776, -3);
        this.c = windowManager$LayoutParams;
        windowManager$LayoutParams.gravity = 17;
        g(speedBoardService, tVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final void a() {
        g(getContext(), this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final void b() {
        r rVar = this.f5506b;
        if (rVar != null) {
            rVar.f280b = false;
            rVar.j(false);
            new Handler(Looper.getMainLooper()).post(new o(rVar, 0));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final int d() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final void e(float f8) {
        r rVar = this.f5506b;
        if (rVar != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(m.h(new byte[]{5, 18, -47, -117, Base64.padSymbol, ByteCompanionObject.MIN_VALUE, -69, 17, 23, 12, -44, -122, 24, -112, -119, 20, 25, 22, -52}, new byte[]{112, 98, -75, -22, 73, -27, -24, 120}), f8);
                rVar.e(m.h(new byte[]{36, 84, -16, -106, 56, -122, 38, -65, 15, 85, -42, -92, Base64.padSymbol, -120, 60, -89}, new byte[]{99, 4, -93, -59, 81, -31, 72, -34}), jSONObject.toString());
            } catch (JSONException unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final void f(Location location) {
        r rVar = this.f5506b;
        if (rVar != null) {
            rVar.i(location);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(Context context, t tVar) {
        if (tVar != null) {
            File file = new File(context.getFilesDir(), tVar.f293a);
            if (!new File(file, tVar.c).exists()) {
                b1.m mVar = new b1.m(context, m.h(new byte[]{-104, 122, 105, -121, -121, -15, 53, 77, -108, 106, 107, -56, -120, -12, 49}, new byte[]{-4, 31, 15, -26, -14, -99, 65, 18}), file, m.h(new byte[]{3, -119, 0, -11, -107, -107, 4, 75, 15, -103, 2}, new byte[]{103, -20, 102, -108, -32, -7, 112, 20}));
                File file2 = new File(context.getCacheDir(), m.h(new byte[]{-41, -37, -121, -78, 92, -49, 116, 109, -37, -53, -123, -3, 83, -54, 112}, new byte[]{-77, -66, -31, -45, 41, -93, 0, 50}));
                try {
                    if (mVar.c(file2)) {
                        u.r(file2, file, false);
                    }
                } catch (IOException unused) {
                }
            }
            b();
            removeAllViews();
            View.inflate(context, 2131492977, this);
            this.e = (WebView) findViewById(2131297763);
            this.f5506b = new r(context, this.e, tVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public WindowManager$LayoutParams getLayParams() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public void setHudMassageObj(HUDMassageObj hUDMassageObj) {
        r rVar = this.f5506b;
        if (rVar != null) {
            rVar.h(hUDMassageObj);
        }
    }

    @Override // v0.h
    public final void c() {
    }

    @Override // v0.h
    public View getView() {
        return this;
    }

    public void setRPM(int i9) {
    }

    @Override // v0.h
    public void setSpeed(int i9) {
    }
}
