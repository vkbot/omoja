package p032c7;

import ai.onnxruntime.C0075b;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.media.C0090h;
import android.util.Log;
import android.view.SurfaceHolder;
import com.example.navistart.R;
import p016b1.AbstractC0880u;
import p022b7.C0920p;
import p022b7.C0925u;

/* JADX INFO: renamed from: c7.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1002f implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f974b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1003g f975c;

    public /* synthetic */ RunnableC1002f(C1003g c1003g, int i10) {
        this.f974b = i10;
        this.f975c = c1003g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Camera cameraOpen = null;
        Object c0925u = null;
        switch (this.f974b) {
            case 0:
                C1003g c1003g = this.f975c;
                try {
                    Log.d("g", "Opening camera");
                    C1005i c1005i = c1003g.f979c;
                    int iM1001h = AbstractC0880u.m1001h(c1005i.f999g.f1005a);
                    if (iM1001h != -1) {
                        cameraOpen = Camera.open(iM1001h);
                    }
                    c1005i.f993a = cameraOpen;
                    if (cameraOpen == null) {
                        C0075b.m183h("Failed to open camera");
                        return;
                    }
                    int iM1001h2 = AbstractC0880u.m1001h(c1005i.f999g.f1005a);
                    Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                    c1005i.f994b = cameraInfo;
                    Camera.getCameraInfo(iM1001h2, cameraInfo);
                    return;
                } catch (Exception e) {
                    Handler handler = c1003g.f980d;
                    if (handler != null) {
                        handler.obtainMessage(R.id.zxing_camera_error, e).sendToTarget();
                    }
                    Log.e("g", "Failed to open camera", e);
                    return;
                }
            case 1:
                C1003g c1003g2 = this.f975c;
                C1005i c1005i2 = c1003g2.f979c;
                try {
                    Log.d("g", "Configuring camera");
                    c1005i2.m1207b();
                    Handler handler2 = c1003g2.f980d;
                    if (handler2 != null) {
                        C0925u c0925u2 = c1005i2.f1002j;
                        if (c0925u2 != null) {
                            int i10 = c1005i2.f1003k;
                            if (i10 == -1) {
                                throw new IllegalStateException("Rotation not calculated yet. Call configure() first.");
                            }
                            c0925u = i10 % 180 != 0 ? new C0925u(c0925u2.f778c, c0925u2.f777b) : c0925u2;
                        }
                        handler2.obtainMessage(R.id.zxing_prewiew_size_ready, c0925u).sendToTarget();
                        return;
                    }
                    return;
                } catch (Exception e6) {
                    Handler handler3 = c1003g2.f980d;
                    if (handler3 != null) {
                        handler3.obtainMessage(R.id.zxing_camera_error, e6).sendToTarget();
                    }
                    Log.e("g", "Failed to configure camera", e6);
                    return;
                }
            case 2:
                C1003g c1003g3 = this.f975c;
                C1005i c1005i3 = c1003g3.f979c;
                try {
                    Log.d("g", "Starting preview");
                    C0090h c0090h = c1003g3.f978b;
                    Camera camera = c1005i3.f993a;
                    SurfaceHolder surfaceHolder = (SurfaceHolder) c0090h.f191c;
                    if (surfaceHolder != null) {
                        camera.setPreviewDisplay(surfaceHolder);
                    } else {
                        camera.setPreviewTexture((SurfaceTexture) c0090h.f192d);
                    }
                    c1005i3.m1210e();
                    return;
                } catch (Exception e10) {
                    Handler handler4 = c1003g3.f980d;
                    if (handler4 != null) {
                        handler4.obtainMessage(R.id.zxing_camera_error, e10).sendToTarget();
                    }
                    Log.e("g", "Failed to start preview", e10);
                    return;
                }
            default:
                try {
                    Log.d("g", "Closing camera");
                    C1005i c1005i4 = this.f975c.f979c;
                    C0998b c0998b = c1005i4.f995c;
                    if (c0998b != null) {
                        c0998b.m1203c();
                        c1005i4.f995c = null;
                    }
                    if (c1005i4.f996d != null) {
                        c1005i4.f996d = null;
                    }
                    Camera camera2 = c1005i4.f993a;
                    if (camera2 != null && c1005i4.f997e) {
                        camera2.stopPreview();
                        c1005i4.f1004l.f989a = null;
                        c1005i4.f997e = false;
                    }
                    C1005i c1005i5 = this.f975c.f979c;
                    Camera camera3 = c1005i5.f993a;
                    if (camera3 != null) {
                        camera3.release();
                        c1005i5.f993a = null;
                    }
                    break;
                } catch (Exception e11) {
                    Log.e("g", "Failed to close camera", e11);
                }
                C1003g c1003g4 = this.f975c;
                c1003g4.f983g = true;
                c1003g4.f980d.sendEmptyMessage(R.id.zxing_camera_closed);
                C0920p c0920p = this.f975c.f977a;
                synchronized (c0920p.f771e) {
                    int i11 = c0920p.f768b - 1;
                    c0920p.f768b = i11;
                    if (i11 == 0) {
                        synchronized (c0920p.f771e) {
                            ((HandlerThread) c0920p.f770d).quit();
                            c0920p.f770d = null;
                            c0920p.f769c = null;
                        }
                    }
                    break;
                }
                return;
        }
    }
}
