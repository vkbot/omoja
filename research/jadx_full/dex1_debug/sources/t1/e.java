package t1;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends LinearLayout {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f5341g = e0.m.h(new byte[]{108, -12, Base64.padSymbol, 11, 102, -62, -123, -8, 109, -28, 44, 56, 77, -44, -126, -9, 85, -30, 57, 23, 88, -42, -123, -24, 115, -34, 52, 14, 77, -57, -119, -17}, new byte[]{10, -127, 88, 103, 57, -75, -20, -100});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ExecutorService f5342h = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f5343b;
    public final TextView c;
    public boolean d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.bumptech.glide.m f5344f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Context context) {
        super(context, null);
        this.f5343b = new Handler(Looper.getMainLooper());
        this.f5344f = new com.bumptech.glide.m(29, this);
        View.inflate(context, 2131492979, this);
        this.c = (TextView) findViewById(2131296785);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double a(JSONObject jSONObject, double d) {
        if (Double.isFinite(d) && d > 0.0d && d <= 300.0d && jSONObject != null && ((!jSONObject.has(e0.m.h(new byte[]{-102, -27, -67, 32, -58, 78, -59}, new byte[]{-23, -112, -34, 67, -93, Base64.padSymbol, -74, -24})) || jSONObject.optBoolean(e0.m.h(new byte[]{48, 56, -48, -44, 0, 8, -92}, new byte[]{67, 77, -77, -73, 101, 123, -41, -73}))) && !jSONObject.has(e0.m.h(new byte[]{-40, -14, 9, -104, -21}, new byte[]{-67, ByteCompanionObject.MIN_VALUE, 123, -9, -103, 26, 103, 86})))) {
            double dOptDouble = jSONObject.optDouble(e0.m.h(new byte[]{77, -99, -34, 19, 5, 86, -44}, new byte[]{Base64.padSymbol, -8, -84, 112, 96, 56, -96, 62}), jSONObject.optDouble(e0.m.h(new byte[]{-15, 116, -70, -1, -86}, new byte[]{-121, 21, -42, -118, -49, -81, -57, -15}), Double.NaN));
            if (Double.isFinite(dOptDouble) && dOptDouble >= 0.0d && dOptDouble <= 100.0d) {
                return (d * dOptDouble) / 100.0d;
            }
        }
        return Double.NaN;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double c() {
        try {
            return Double.parseDouble(h0.b.o().loadString(f5341g, e0.m.h(new byte[]{36}, new byte[]{20, 116, -39, -69, 65, 72, 114, 117})).replace(',', '.'));
        } catch (NumberFormatException unused) {
            return Double.NaN;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        this.e++;
        Handler handler = this.f5343b;
        com.bumptech.glide.m mVar = this.f5344f;
        handler.removeCallbacks(mVar);
        if (this.d && isShown()) {
            handler.post(mVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.d = true;
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.d = false;
        this.e++;
        this.f5343b.removeCallbacksAndMessages(null);
        super.onDetachedFromWindow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i9) {
        super.onVisibilityChanged(view, i9);
        if (this.f5343b != null) {
            b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i9) {
        super.onWindowVisibilityChanged(i9);
        if (this.f5343b != null) {
            b();
        }
    }
}
