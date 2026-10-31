package p032c7;

import ai.onnxruntime.C0075b;
import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.HttpUrl;
import p022b7.C0925u;
import p043d6.C1302a;
import p099j1.C1929i;

/* JADX INFO: renamed from: c7.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1005i {

    /* JADX INFO: renamed from: m */
    public static final /* synthetic */ int f992m = 0;

    /* JADX INFO: renamed from: a */
    public Camera f993a;

    /* JADX INFO: renamed from: b */
    public Camera.CameraInfo f994b;

    /* JADX INFO: renamed from: c */
    public C0998b f995c;

    /* JADX INFO: renamed from: d */
    public C1302a f996d;

    /* JADX INFO: renamed from: e */
    public boolean f997e;

    /* JADX INFO: renamed from: f */
    public String f998f;

    /* JADX INFO: renamed from: h */
    public C1008l f1000h;

    /* JADX INFO: renamed from: i */
    public C0925u f1001i;

    /* JADX INFO: renamed from: j */
    public C0925u f1002j;

    /* JADX INFO: renamed from: g */
    public C1006j f999g = new C1006j();

    /* JADX INFO: renamed from: k */
    public int f1003k = -1;

    /* JADX INFO: renamed from: l */
    public final C1004h f1004l = new C1004h(this);

    public C1005i(Context context) {
    }

    /* JADX INFO: renamed from: a */
    public final int m1206a() {
        int i10 = this.f1000h.f1008b;
        int i11 = 0;
        if (i10 != 0) {
            if (i10 == 1) {
                i11 = 90;
            } else if (i10 == 2) {
                i11 = 180;
            } else if (i10 == 3) {
                i11 = 270;
            }
        }
        Camera.CameraInfo cameraInfo = this.f994b;
        int i12 = cameraInfo.facing == 1 ? (360 - ((cameraInfo.orientation + i11) % 360)) % 360 : ((cameraInfo.orientation - i11) + 360) % 360;
        Log.i("i", "Camera Display Orientation: " + i12);
        return i12;
    }

    /* JADX INFO: renamed from: b */
    public final void m1207b() {
        if (this.f993a == null) {
            C0075b.m183h("Camera not open");
            return;
        }
        try {
            int iM1206a = m1206a();
            this.f1003k = iM1206a;
            this.f993a.setDisplayOrientation(iM1206a);
        } catch (Exception unused) {
            Log.w("i", "Failed to set rotation.");
        }
        try {
            m1208c(false);
        } catch (Exception unused2) {
            try {
                m1208c(true);
            } catch (Exception unused3) {
                Log.w("i", "Camera rejected even safe-mode parameters! No configuration");
            }
        }
        Camera.Size previewSize = this.f993a.getParameters().getPreviewSize();
        if (previewSize == null) {
            this.f1002j = this.f1001i;
        } else {
            this.f1002j = new C0925u(previewSize.width, previewSize.height);
        }
        this.f1004l.f990b = this.f1002j;
    }

    /* JADX INFO: renamed from: c */
    public final void m1208c(boolean z9) {
        String string;
        Camera.Parameters parameters = this.f993a.getParameters();
        String str = this.f998f;
        if (str == null) {
            this.f998f = parameters.flatten();
        } else {
            parameters.unflatten(str);
        }
        if (parameters == null) {
            Log.w("i", "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        Log.i("i", "Initial camera parameters: " + parameters.flatten());
        if (z9) {
            Log.w("i", "In camera config safe mode -- most settings will not be honored");
        }
        this.f999g.getClass();
        int i10 = AbstractC0999c.f967a;
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        String strM1204a = AbstractC0999c.m1204a("focus mode", supportedFocusModes, "auto");
        if (!z9 && strM1204a == null) {
            strM1204a = AbstractC0999c.m1204a("focus mode", supportedFocusModes, "macro", "edof");
        }
        if (strM1204a != null) {
            if (strM1204a.equals(parameters.getFocusMode())) {
                Log.i("CameraConfiguration", "Focus mode already set to ".concat(strM1204a));
            } else {
                parameters.setFocusMode(strM1204a);
            }
        }
        if (!z9) {
            AbstractC0999c.m1205b(parameters, false);
            this.f999g.getClass();
            this.f999g.getClass();
            this.f999g.getClass();
        }
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        ArrayList arrayList = new ArrayList();
        if (supportedPreviewSizes == null) {
            Camera.Size previewSize = parameters.getPreviewSize();
            if (previewSize != null) {
                arrayList.add(new C0925u(previewSize.width, previewSize.height));
            }
        } else {
            for (Camera.Size size : supportedPreviewSizes) {
                arrayList.add(new C0925u(size.width, size.height));
            }
        }
        int[] iArr = null;
        if (arrayList.size() == 0) {
            this.f1001i = null;
        } else {
            C1008l c1008l = this.f1000h;
            int i11 = this.f1003k;
            if (i11 == -1) {
                C1929i.m3030l("Rotation not calculated yet. Call configure() first.");
                return;
            }
            boolean z10 = i11 % 180 != 0;
            C0925u c0925u = (C0925u) c1008l.f1009c;
            if (c0925u == null) {
                c0925u = null;
            } else if (z10) {
                c0925u = new C0925u(c0925u.f778c, c0925u.f777b);
            }
            AbstractC1010n abstractC1010n = (AbstractC1010n) c1008l.f1010d;
            abstractC1010n.getClass();
            if (c0925u != null) {
                Collections.sort(arrayList, new C1009m(abstractC1010n, c0925u));
            }
            Log.i("n", "Viewfinder size: " + c0925u);
            Log.i("n", "Preview in order of preference: " + arrayList);
            C0925u c0925u2 = (C0925u) arrayList.get(0);
            this.f1001i = c0925u2;
            parameters.setPreviewSize(c0925u2.f777b, c0925u2.f778c);
        }
        if (Build.DEVICE.equals("glass-1")) {
            List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
            StringBuilder sb = new StringBuilder("Supported FPS ranges: ");
            if (supportedPreviewFpsRange == null || supportedPreviewFpsRange.isEmpty()) {
                string = HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
            } else {
                StringBuilder sb2 = new StringBuilder("[");
                Iterator<int[]> it = supportedPreviewFpsRange.iterator();
                while (it.hasNext()) {
                    sb2.append(Arrays.toString(it.next()));
                    if (it.hasNext()) {
                        sb2.append(", ");
                    }
                }
                sb2.append(']');
                string = sb2.toString();
            }
            sb.append(string);
            Log.i("CameraConfiguration", sb.toString());
            if (supportedPreviewFpsRange != null && !supportedPreviewFpsRange.isEmpty()) {
                for (int[] iArr2 : supportedPreviewFpsRange) {
                    int i12 = iArr2[0];
                    int i13 = iArr2[1];
                    if (i12 >= 10000 && i13 <= 20000) {
                        iArr = iArr2;
                        break;
                    }
                }
                if (iArr == null) {
                    Log.i("CameraConfiguration", "No suitable FPS range?");
                } else {
                    int[] iArr3 = new int[2];
                    parameters.getPreviewFpsRange(iArr3);
                    if (Arrays.equals(iArr3, iArr)) {
                        Log.i("CameraConfiguration", "FPS range already set to " + Arrays.toString(iArr));
                    } else {
                        Log.i("CameraConfiguration", "Setting FPS range to " + Arrays.toString(iArr));
                        parameters.setPreviewFpsRange(iArr[0], iArr[1]);
                    }
                }
            }
        }
        Log.i("i", "Final camera parameters: " + parameters.flatten());
        this.f993a.setParameters(parameters);
    }

    /* JADX INFO: renamed from: d */
    public final void m1209d(boolean z9) {
        String flashMode;
        Camera camera = this.f993a;
        if (camera != null) {
            try {
                Camera.Parameters parameters = camera.getParameters();
                if (z9 != ((parameters == null || (flashMode = parameters.getFlashMode()) == null || (!"on".equals(flashMode) && !"torch".equals(flashMode))) ? false : true)) {
                    C0998b c0998b = this.f995c;
                    if (c0998b != null) {
                        c0998b.m1203c();
                    }
                    Camera.Parameters parameters2 = this.f993a.getParameters();
                    AbstractC0999c.m1205b(parameters2, z9);
                    this.f999g.getClass();
                    this.f993a.setParameters(parameters2);
                    C0998b c0998b2 = this.f995c;
                    if (c0998b2 != null) {
                        c0998b2.f961a = false;
                        c0998b2.m1202b();
                    }
                }
            } catch (RuntimeException e) {
                Log.e("i", "Failed to set torch", e);
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m1210e() {
        Camera camera = this.f993a;
        if (camera == null || this.f997e) {
            return;
        }
        camera.startPreview();
        this.f997e = true;
        this.f995c = new C0998b(this.f993a, this.f999g);
        C1006j c1006j = this.f999g;
        C1302a c1302a = new C1302a();
        c1302a.f3108a = this;
        c1302a.f3109b = new Handler();
        this.f996d = c1302a;
        c1006j.getClass();
    }
}
