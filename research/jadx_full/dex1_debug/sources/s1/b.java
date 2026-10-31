package s1;

import android.content.Context;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.hardware.display.VirtualDisplay;
import android.os.Build$VERSION;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView$SurfaceTextureListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.TextView;
import com.example.navistart.home.LauncherWindowService;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends FrameLayout implements TextureView$SurfaceTextureListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5052b;
    public final String c;
    public final TextureView d;
    public final TextView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final x f5053f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public LauncherWindowService f5054g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Surface f5055h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5056i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5057j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5058k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f5059l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f5060m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f5061n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5062o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f5063p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final f5.j f5064q;
    public final a r;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Context context, String str, String str2) {
        super(context);
        this.f5058k = true;
        this.f5060m = true;
        this.f5062o = -1;
        this.f5064q = new f5.j(16, this);
        this.r = new a(this);
        this.f5052b = str;
        this.c = str2;
        this.f5053f = x.a(context);
        TextureView textureView = new TextureView(context);
        this.d = textureView;
        textureView.setSurfaceTextureListener(this);
        addView(textureView, new FrameLayout$LayoutParams(-1, -1));
        TextView textView = new TextView(context);
        this.e = textView;
        textView.setTextColor(-1);
        textView.setTextSize(14.0f);
        textView.setGravity(17);
        textView.setBackgroundColor(-15260882);
        addView(textView, new FrameLayout$LayoutParams(-1, -1));
        f(e0.m.h(new byte[]{-42, 55, -120, 74, -64, -16, 11, -29, -42, 25, -120, 65, -64, -16, 11, -30, -28, 41, -2}, new byte[]{6, -87, 88, -4, 16, 72, -37, 87}));
        textureView.setOnTouchListener(new e4.i(1, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        if (this.f5057j || !this.f5058k || this.f5054g == null) {
            return;
        }
        TextureView textureView = this.d;
        if (textureView.isAvailable()) {
            try {
                if (this.f5055h == null) {
                    this.f5055h = new Surface(textureView.getSurfaceTexture());
                }
                int iMax = Math.max(1, textureView.getWidth());
                int iMax2 = Math.max(1, textureView.getHeight());
                textureView.getSurfaceTexture().setDefaultBufferSize(iMax, iMax2);
                int displayId = this.f5054g.a(this.f5052b, iMax, iMax2, this.f5055h).getDisplay().getDisplayId();
                if (displayId != this.f5062o) {
                    this.f5062o = displayId;
                    this.f5060m = true;
                }
                d();
            } catch (RuntimeException e) {
                f(e0.m.h(new byte[]{-74, -61, ByteCompanionObject.MAX_VALUE, -124, 67, -18, -9, 47, 92, 125}, new byte[]{102, 93, -81, 62, -109, 83, 39, -111}).concat(e.getClass().getSimpleName()));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        LauncherWindowService launcherWindowService = this.f5054g;
        if (launcherWindowService != null) {
            VirtualDisplay virtualDisplay = (VirtualDisplay) launcherWindowService.f909b.get(this.f5052b);
            if (virtualDisplay != null) {
                virtualDisplay.setSurface(null);
            }
        }
        Surface surface = this.f5055h;
        if (surface != null) {
            surface.release();
            this.f5055h = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        if (this.f5057j) {
            return;
        }
        this.f5057j = true;
        removeCallbacks(this.f5064q);
        b();
        if (this.f5056i) {
            getContext().unbindService(this.r);
            this.f5056i = false;
        }
        this.f5054g = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        if (this.f5057j || this.f5059l || !this.f5058k || this.f5062o <= 0 || !this.f5060m || this.f5061n || !this.f5053f.f5228f) {
            return;
        }
        this.f5061n = true;
        if (this.e.getVisibility() == 0) {
            f(e0.m.h(new byte[]{-36, 107, -87, 81, -37, -112, -104, 122, -36, 69, -87, 90, -37, -112, -104, 123, -18, 117, -33}, new byte[]{12, -11, 121, -25, 11, 40, 72, -50}));
        }
        x xVar = this.f5053f;
        xVar.d.execute(new b1.n(xVar, e0.m.h(new byte[]{77, 122, 104, 82, -58, -119, 96}, new byte[]{8, 52, 59, 7, -108, -52, 64, 119}) + this.f5062o + " " + this.c, new q0.f(1, this), 12));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(boolean z8) {
        if (this.f5057j || !this.f5058k) {
            return;
        }
        if (!z8) {
            f(e0.m.h(new byte[]{2, -34, 55, -70, 7, -95, -51, 78, -14, -112, 88, -48, 105, -52, -89, 32, 98, 96, 55, -67, 7, -87, -51, 68, 2, -2, 54, -127, 6, -98, -52, 115, 2, -1, 55, -67, 7, -94}, new byte[]{-46, 64, -25, 0, -41, 28, 29, -16}));
            return;
        }
        if (this.f5056i) {
            a();
            return;
        }
        try {
            Intent intent = new Intent(getContext(), (Class<?>) LauncherWindowService.class);
            if (Build$VERSION.SDK_INT >= 26) {
                c5.h.r(getContext(), intent);
            } else {
                getContext().startService(intent);
            }
            boolean zBindService = getContext().bindService(intent, this.r, 1);
            this.f5056i = zBindService;
            if (zBindService) {
                return;
            }
            f(e0.m.h(new byte[]{-95, -23, -31, 22, 75, -32, -120, -47, -59, -92, -127, 115, -48, -31, -75, -48, -16, -91, -67, -125, -69, -114, -37, -65, -95, -64, -31, 25, -69, -118, -38, -113, -96, -13, -31, 27, -70, -77, -38, -115, -96, -11, -32, 44, 75, -31, -79, 33, -96, -11, -31, 22, -70, -79, -37, -77, -95, -52, -32, 34, -70, -78, 43, -47, -49, -92, -117, 115, -43, -31, -74}, new byte[]{113, 116, 49, -93, 107, 49, 11, 1}));
        } catch (RuntimeException e) {
            f(e0.m.h(new byte[]{42, 85, ByteCompanionObject.MAX_VALUE, 39, -51, -16, -50, -59, 42, 76, 126, 19, 60, -96, -96, -89, 64, 36, 17, 66, -95, 74, 62}, new byte[]{-6, -12, -81, -110, 28, 112, 30, 119}).concat(e.getClass().getSimpleName()));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(String str) {
        TextView textView = this.e;
        textView.setText(str);
        textView.setVisibility(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        e(this.f5053f.f5228f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        b();
        super.onDetachedFromWindow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.TextureView$SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i9, int i10) {
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.TextureView$SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        b();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.TextureView$SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i9, int i10) {
        f5.j jVar = this.f5064q;
        removeCallbacks(jVar);
        postDelayed(jVar, 100L);
    }

    @Override // android.view.TextureView$SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
