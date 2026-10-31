package p190s1;

import android.content.Context;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.hardware.display.VirtualDisplay;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.example.navistart.home.LauncherWindowService;
import kotlin.jvm.internal.ByteCompanionObject;
import p016b1.RunnableC0873n;
import p047e0.AbstractC1387m;
import p051e4.ViewOnTouchListenerC1476i;
import p062f5.RunnableC1556j;
import p173q0.C3042f;

/* JADX INFO: renamed from: s1.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class TextureViewSurfaceTextureListenerC3135b extends FrameLayout implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: b */
    public final String f8965b;

    /* JADX INFO: renamed from: c */
    public final String f8966c;

    /* JADX INFO: renamed from: d */
    public final TextureView f8967d;

    /* JADX INFO: renamed from: e */
    public final TextView f8968e;

    /* JADX INFO: renamed from: f */
    public final C3179x f8969f;

    /* JADX INFO: renamed from: g */
    public LauncherWindowService f8970g;

    /* JADX INFO: renamed from: h */
    public Surface f8971h;

    /* JADX INFO: renamed from: i */
    public boolean f8972i;

    /* JADX INFO: renamed from: j */
    public boolean f8973j;

    /* JADX INFO: renamed from: k */
    public boolean f8974k;

    /* JADX INFO: renamed from: l */
    public boolean f8975l;

    /* JADX INFO: renamed from: m */
    public boolean f8976m;

    /* JADX INFO: renamed from: n */
    public boolean f8977n;

    /* JADX INFO: renamed from: o */
    public int f8978o;

    /* JADX INFO: renamed from: p */
    public long f8979p;

    /* JADX INFO: renamed from: q */
    public final RunnableC1556j f8980q;

    /* JADX INFO: renamed from: r */
    public final ServiceConnectionC3132a f8981r;

    public TextureViewSurfaceTextureListenerC3135b(Context context, String str, String str2) {
        super(context);
        this.f8974k = true;
        this.f8976m = true;
        this.f8978o = -1;
        this.f8980q = new RunnableC1556j(16, this);
        this.f8981r = new ServiceConnectionC3132a(this);
        this.f8965b = str;
        this.f8966c = str2;
        this.f8969f = C3179x.m5107a(context);
        TextureView textureView = new TextureView(context);
        this.f8967d = textureView;
        textureView.setSurfaceTextureListener(this);
        addView(textureView, new FrameLayout.LayoutParams(-1, -1));
        TextView textView = new TextView(context);
        this.f8968e = textView;
        textView.setTextColor(-1);
        textView.setTextSize(14.0f);
        textView.setGravity(17);
        textView.setBackgroundColor(-15260882);
        addView(textView, new FrameLayout.LayoutParams(-1, -1));
        m4978f(AbstractC1387m.m2421h(new byte[]{-42, 55, -120, 74, -64, -16, 11, -29, -42, 25, -120, 65, -64, -16, 11, -30, -28, 41, -2}, new byte[]{6, -87, 88, -4, 16, 72, -37, 87}));
        textureView.setOnTouchListener(new ViewOnTouchListenerC1476i(1, this));
    }

    /* JADX INFO: renamed from: a */
    public final void m4973a() {
        if (this.f8973j || !this.f8974k || this.f8970g == null) {
            return;
        }
        TextureView textureView = this.f8967d;
        if (textureView.isAvailable()) {
            try {
                if (this.f8971h == null) {
                    this.f8971h = new Surface(textureView.getSurfaceTexture());
                }
                int iMax = Math.max(1, textureView.getWidth());
                int iMax2 = Math.max(1, textureView.getHeight());
                textureView.getSurfaceTexture().setDefaultBufferSize(iMax, iMax2);
                int displayId = this.f8970g.m1642a(this.f8965b, iMax, iMax2, this.f8971h).getDisplay().getDisplayId();
                if (displayId != this.f8978o) {
                    this.f8978o = displayId;
                    this.f8976m = true;
                }
                m4976d();
            } catch (RuntimeException e) {
                m4978f(AbstractC1387m.m2421h(new byte[]{-74, -61, ByteCompanionObject.MAX_VALUE, -124, 67, -18, -9, 47, 92, 125}, new byte[]{102, 93, -81, 62, -109, 83, 39, -111}).concat(e.getClass().getSimpleName()));
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m4974b() {
        LauncherWindowService launcherWindowService = this.f8970g;
        if (launcherWindowService != null) {
            VirtualDisplay virtualDisplay = (VirtualDisplay) launcherWindowService.f1736b.get(this.f8965b);
            if (virtualDisplay != null) {
                virtualDisplay.setSurface(null);
            }
        }
        Surface surface = this.f8971h;
        if (surface != null) {
            surface.release();
            this.f8971h = null;
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m4975c() {
        if (this.f8973j) {
            return;
        }
        this.f8973j = true;
        removeCallbacks(this.f8980q);
        m4974b();
        if (this.f8972i) {
            getContext().unbindService(this.f8981r);
            this.f8972i = false;
        }
        this.f8970g = null;
    }

    /* JADX INFO: renamed from: d */
    public final void m4976d() {
        if (this.f8973j || this.f8975l || !this.f8974k || this.f8978o <= 0 || !this.f8976m || this.f8977n || !this.f8969f.f9254f) {
            return;
        }
        int i10 = 1;
        this.f8977n = true;
        if (this.f8968e.getVisibility() == 0) {
            m4978f(AbstractC1387m.m2421h(new byte[]{-36, 107, -87, 81, -37, -112, -104, 122, -36, 69, -87, 90, -37, -112, -104, 123, -18, 117, -33}, new byte[]{12, -11, 121, -25, 11, 40, 72, -50}));
        }
        C3179x c3179x = this.f8969f;
        c3179x.f9252d.execute(new RunnableC0873n(c3179x, AbstractC1387m.m2421h(new byte[]{77, 122, 104, 82, -58, -119, 96}, new byte[]{8, 52, 59, 7, -108, -52, 64, 119}) + this.f8978o + " " + this.f8966c, new C3042f(i10, this), 12));
    }

    /* JADX INFO: renamed from: e */
    public final void m4977e(boolean z9) {
        if (this.f8973j || !this.f8974k) {
            return;
        }
        if (!z9) {
            m4978f(AbstractC1387m.m2421h(new byte[]{2, -34, 55, -70, 7, -95, -51, 78, -14, -112, 88, -48, 105, -52, -89, 32, 98, 96, 55, -67, 7, -87, -51, 68, 2, -2, 54, -127, 6, -98, -52, 115, 2, -1, 55, -67, 7, -94}, new byte[]{-46, 64, -25, 0, -41, 28, 29, -16}));
            return;
        }
        if (this.f8972i) {
            m4973a();
            return;
        }
        try {
            Intent intent = new Intent(getContext(), (Class<?>) LauncherWindowService.class);
            if (Build.VERSION.SDK_INT >= 26) {
                getContext().startForegroundService(intent);
            } else {
                getContext().startService(intent);
            }
            boolean zBindService = getContext().bindService(intent, this.f8981r, 1);
            this.f8972i = zBindService;
            if (zBindService) {
                return;
            }
            m4978f(AbstractC1387m.m2421h(new byte[]{-95, -23, -31, 22, 75, -32, -120, -47, -59, -92, -127, 115, -48, -31, -75, -48, -16, -91, -67, -125, -69, -114, -37, -65, -95, -64, -31, 25, -69, -118, -38, -113, -96, -13, -31, 27, -70, -77, -38, -115, -96, -11, -32, 44, 75, -31, -79, 33, -96, -11, -31, 22, -70, -79, -37, -77, -95, -52, -32, 34, -70, -78, 43, -47, -49, -92, -117, 115, -43, -31, -74}, new byte[]{113, 116, 49, -93, 107, 49, 11, 1}));
        } catch (RuntimeException e) {
            m4978f(AbstractC1387m.m2421h(new byte[]{42, 85, ByteCompanionObject.MAX_VALUE, 39, -51, -16, -50, -59, 42, 76, 126, 19, 60, -96, -96, -89, 64, 36, 17, 66, -95, 74, 62}, new byte[]{-6, -12, -81, -110, 28, 112, 30, 119}).concat(e.getClass().getSimpleName()));
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m4978f(String str) {
        TextView textView = this.f8968e;
        textView.setText(str);
        textView.setVisibility(0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        m4977e(this.f8969f.f9254f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        m4974b();
        super.onDetachedFromWindow();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        m4973a();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        m4974b();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        RunnableC1556j runnableC1556j = this.f8980q;
        removeCallbacks(runnableC1556j);
        postDelayed(runnableC1556j, 100L);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
