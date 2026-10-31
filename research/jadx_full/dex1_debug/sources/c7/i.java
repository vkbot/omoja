package c7;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera$CameraInfo;
import android.hardware.Camera$Parameters;
import android.hardware.Camera$Size;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import b7.u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f527m = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Camera f528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Camera$CameraInfo f529b;
    public b c;
    public d6.a d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f530f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public l f532h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public u f533i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public u f534j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public j f531g = new j();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f535k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final h f536l = new h(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(Context context) {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a() {
        int i9 = this.f532h.f540b;
        int i10 = 0;
        if (i9 != 0) {
            if (i9 == 1) {
                i10 = 90;
            } else if (i9 == 2) {
                i10 = 180;
            } else if (i9 == 3) {
                i10 = 270;
            }
        }
        Camera$CameraInfo camera$CameraInfo = this.f529b;
        int i11 = camera$CameraInfo.facing == 1 ? (360 - ((camera$CameraInfo.orientation + i10) % 360)) % 360 : ((camera$CameraInfo.orientation - i10) + 360) % 360;
        Log.i("i", "Camera Display Orientation: " + i11);
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        if (this.f528a == null) {
            ai.onnxruntime.b.h("Camera not open");
            return;
        }
        try {
            int iA = a();
            this.f535k = iA;
            this.f528a.setDisplayOrientation(iA);
        } catch (Exception unused) {
            Log.w("i", "Failed to set rotation.");
        }
        try {
            c(false);
        } catch (Exception unused2) {
            try {
                c(true);
            } catch (Exception unused3) {
                Log.w("i", "Camera rejected even safe-mode parameters! No configuration");
            }
        }
        Camera$Size previewSize = this.f528a.getParameters().getPreviewSize();
        if (previewSize == null) {
            this.f534j = this.f533i;
        } else {
            this.f534j = new u(previewSize.width, previewSize.height);
        }
        this.f536l.f526b = this.f534j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(boolean z8) {
        String string;
        Camera$Parameters parameters = this.f528a.getParameters();
        String str = this.f530f;
        if (str == null) {
            this.f530f = parameters.flatten();
        } else {
            parameters.unflatten(str);
        }
        if (parameters == null) {
            Log.w("i", "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        Log.i("i", "Initial camera parameters: " + parameters.flatten());
        if (z8) {
            Log.w("i", "In camera config safe mode -- most settings will not be honored");
        }
        this.f531g.getClass();
        int i9 = c.f511a;
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        String strA = c.a("focus mode", supportedFocusModes, "auto");
        if (!z8 && strA == null) {
            strA = c.a("focus mode", supportedFocusModes, "macro", "edof");
        }
        if (strA != null) {
            if (strA.equals(parameters.getFocusMode())) {
                Log.i("CameraConfiguration", "Focus mode already set to ".concat(strA));
            } else {
                parameters.setFocusMode(strA);
            }
        }
        if (!z8) {
            c.b(parameters, false);
            this.f531g.getClass();
            this.f531g.getClass();
            this.f531g.getClass();
        }
        List<Camera$Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        ArrayList arrayList = new ArrayList();
        if (supportedPreviewSizes == null) {
            Camera$Size previewSize = parameters.getPreviewSize();
            if (previewSize != null) {
                arrayList.add(new u(previewSize.width, previewSize.height));
            }
        } else {
            for (Camera$Size camera$Size : supportedPreviewSizes) {
                arrayList.add(new u(camera$Size.width, camera$Size.height));
            }
        }
        int[] iArr = null;
        if (arrayList.size() == 0) {
            this.f533i = null;
        } else {
            l lVar = this.f532h;
            int i10 = this.f535k;
            if (i10 == -1) {
                j1.i.l("Rotation not calculated yet. Call configure() first.");
                return;
            }
            boolean z9 = i10 % 180 != 0;
            u uVar = (u) lVar.c;
            if (uVar == null) {
                uVar = null;
            } else if (z9) {
                uVar = new u(uVar.c, uVar.f389b);
            }
            n nVar = (n) lVar.d;
            nVar.getClass();
            if (uVar != null) {
                Collections.sort(arrayList, new m(nVar, uVar));
            }
            Log.i("n", "Viewfinder size: " + uVar);
            Log.i("n", "Preview in order of preference: " + arrayList);
            u uVar2 = (u) arrayList.get(0);
            this.f533i = uVar2;
            parameters.setPreviewSize(uVar2.f389b, uVar2.c);
        }
        if (Build.DEVICE.equals("glass-1")) {
            List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
            StringBuilder sb = new StringBuilder("Supported FPS ranges: ");
            if (supportedPreviewFpsRange == null || supportedPreviewFpsRange.isEmpty()) {
                string = "[]";
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
                    int i11 = iArr2[0];
                    int i12 = iArr2[1];
                    if (i11 >= 10000 && i12 <= 20000) {
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
        this.f528a.setParameters(parameters);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(boolean z8) {
        String flashMode;
        Camera camera = this.f528a;
        if (camera != null) {
            try {
                Camera$Parameters parameters = camera.getParameters();
                if (z8 != ((parameters == null || (flashMode = parameters.getFlashMode()) == null || (!"on".equals(flashMode) && !"torch".equals(flashMode))) ? false : true)) {
                    b bVar = this.c;
                    if (bVar != null) {
                        bVar.c();
                    }
                    Camera$Parameters parameters2 = this.f528a.getParameters();
                    c.b(parameters2, z8);
                    this.f531g.getClass();
                    this.f528a.setParameters(parameters2);
                    b bVar2 = this.c;
                    if (bVar2 != null) {
                        bVar2.f508a = false;
                        bVar2.b();
                    }
                }
            } catch (RuntimeException e) {
                Log.e("i", "Failed to set torch", e);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        Camera camera = this.f528a;
        if (camera == null || this.e) {
            return;
        }
        camera.startPreview();
        this.e = true;
        this.c = new b(this.f528a, this.f531g);
        j jVar = this.f531g;
        d6.a aVar = new d6.a();
        aVar.f1777a = this;
        aVar.f1778b = new Handler();
        this.d = aVar;
        jVar.getClass();
    }
}
