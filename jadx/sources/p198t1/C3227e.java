package p198t1;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.R;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.p161io.FilenameUtils;
import org.json.JSONObject;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: t1.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3227e extends LinearLayout {

    /* JADX INFO: renamed from: g */
    public static final String f9443g = AbstractC1387m.m2421h(new byte[]{108, -12, Base64.padSymbol, 11, 102, -62, -123, -8, 109, -28, 44, 56, 77, -44, -126, -9, 85, -30, 57, 23, 88, -42, -123, -24, 115, -34, 52, 14, 77, -57, -119, -17}, new byte[]{10, -127, 88, 103, 57, -75, -20, -100});

    /* JADX INFO: renamed from: h */
    public static final ExecutorService f9444h = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: b */
    public final Handler f9445b;

    /* JADX INFO: renamed from: c */
    public final TextView f9446c;

    /* JADX INFO: renamed from: d */
    public boolean f9447d;

    /* JADX INFO: renamed from: e */
    public int f9448e;

    /* JADX INFO: renamed from: f */
    public final RunnableC1054m f9449f;

    public C3227e(Context context) {
        super(context, null);
        this.f9445b = new Handler(Looper.getMainLooper());
        this.f9449f = new RunnableC1054m(29, this);
        View.inflate(context, R.layout.fuel_remaining_view, this);
        this.f9446c = (TextView) findViewById(R.id.fuel_remaining_value);
    }

    /* JADX INFO: renamed from: a */
    public static double m5160a(JSONObject jSONObject, double d) {
        if (Double.isFinite(d) && d > 0.0d && d <= 300.0d && jSONObject != null && ((!jSONObject.has(AbstractC1387m.m2421h(new byte[]{-102, -27, -67, 32, -58, 78, -59}, new byte[]{-23, -112, -34, 67, -93, Base64.padSymbol, -74, -24})) || jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{48, 56, -48, -44, 0, 8, -92}, new byte[]{67, 77, -77, -73, 101, 123, -41, -73}))) && !jSONObject.has(AbstractC1387m.m2421h(new byte[]{-40, -14, 9, -104, -21}, new byte[]{-67, ByteCompanionObject.MIN_VALUE, 123, -9, -103, 26, 103, 86})))) {
            double dOptDouble = jSONObject.optDouble(AbstractC1387m.m2421h(new byte[]{77, -99, -34, 19, 5, 86, -44}, new byte[]{Base64.padSymbol, -8, -84, 112, 96, 56, -96, 62}), jSONObject.optDouble(AbstractC1387m.m2421h(new byte[]{-15, 116, -70, -1, -86}, new byte[]{-121, 21, -42, -118, -49, -81, -57, -15}), Double.NaN));
            if (Double.isFinite(dOptDouble) && dOptDouble >= 0.0d && dOptDouble <= 100.0d) {
                return (d * dOptDouble) / 100.0d;
            }
        }
        return Double.NaN;
    }

    /* JADX INFO: renamed from: c */
    public static double m5161c() {
        try {
            return Double.parseDouble(C1652b.m2745o().loadString(f9443g, AbstractC1387m.m2421h(new byte[]{36}, new byte[]{20, 116, -39, -69, 65, 72, 114, 117})).replace(',', FilenameUtils.EXTENSION_SEPARATOR));
        } catch (NumberFormatException unused) {
            return Double.NaN;
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m5162b() {
        this.f9448e++;
        Handler handler = this.f9445b;
        RunnableC1054m runnableC1054m = this.f9449f;
        handler.removeCallbacks(runnableC1054m);
        if (this.f9447d && isShown()) {
            handler.post(runnableC1054m);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f9447d = true;
        m5162b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f9447d = false;
        this.f9448e++;
        this.f9445b.removeCallbacksAndMessages(null);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (this.f9445b != null) {
            m5162b();
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        if (this.f9445b != null) {
            m5162b();
        }
    }
}
