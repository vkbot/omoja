package c7;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera$CameraInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.SurfaceHolder;
import b1.u;
import b7.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f514b;
    public final /* synthetic */ g c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(g gVar, int i9) {
        this.f514b = i9;
        this.c = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        Camera cameraOpen = null;
        Object uVar = null;
        switch (this.f514b) {
            case 0:
                g gVar = this.c;
                try {
                    Log.d("g", "Opening camera");
                    i iVar = gVar.c;
                    int iH = u.h(iVar.f531g.f537a);
                    if (iH != -1) {
                        cameraOpen = Camera.open(iH);
                    }
                    iVar.f528a = cameraOpen;
                    if (cameraOpen == null) {
                        ai.onnxruntime.b.h("Failed to open camera");
                        return;
                    }
                    int iH2 = u.h(iVar.f531g.f537a);
                    Camera$CameraInfo camera$CameraInfo = new Camera$CameraInfo();
                    iVar.f529b = camera$CameraInfo;
                    Camera.getCameraInfo(iH2, camera$CameraInfo);
                    return;
                } catch (Exception e) {
                    Handler handler = gVar.d;
                    if (handler != null) {
                        handler.obtainMessage(2131297790, e).sendToTarget();
                    }
                    Log.e("g", "Failed to open camera", e);
                    return;
                }
            case 1:
                g gVar2 = this.c;
                i iVar2 = gVar2.c;
                try {
                    Log.d("g", "Configuring camera");
                    iVar2.b();
                    Handler handler2 = gVar2.d;
                    if (handler2 != null) {
                        b7.u uVar2 = iVar2.f534j;
                        if (uVar2 != null) {
                            int i9 = iVar2.f535k;
                            if (i9 == -1) {
                                throw new IllegalStateException("Rotation not calculated yet. Call configure() first.");
                            }
                            uVar = i9 % 180 != 0 ? new b7.u(uVar2.c, uVar2.f389b) : uVar2;
                        }
                        handler2.obtainMessage(2131297796, uVar).sendToTarget();
                        return;
                    }
                    return;
                } catch (Exception e6) {
                    Handler handler3 = gVar2.d;
                    if (handler3 != null) {
                        handler3.obtainMessage(2131297790, e6).sendToTarget();
                    }
                    Log.e("g", "Failed to configure camera", e6);
                    return;
                }
            case 2:
                g gVar3 = this.c;
                i iVar3 = gVar3.c;
                try {
                    Log.d("g", "Starting preview");
                    android.support.v4.media.h hVar = gVar3.f517b;
                    Camera camera = iVar3.f528a;
                    SurfaceHolder surfaceHolder = (SurfaceHolder) hVar.c;
                    if (surfaceHolder != null) {
                        camera.setPreviewDisplay(surfaceHolder);
                    } else {
                        camera.setPreviewTexture((SurfaceTexture) hVar.d);
                    }
                    iVar3.e();
                    return;
                } catch (Exception e9) {
                    Handler handler4 = gVar3.d;
                    if (handler4 != null) {
                        handler4.obtainMessage(2131297790, e9).sendToTarget();
                    }
                    Log.e("g", "Failed to start preview", e9);
                    return;
                }
            default:
                try {
                    Log.d("g", "Closing camera");
                    i iVar4 = this.c.c;
                    b bVar = iVar4.c;
                    if (bVar != null) {
                        bVar.c();
                        iVar4.c = null;
                    }
                    if (iVar4.d != null) {
                        iVar4.d = null;
                    }
                    Camera camera2 = iVar4.f528a;
                    if (camera2 != null && iVar4.e) {
                        camera2.stopPreview();
                        iVar4.f536l.f525a = null;
                        iVar4.e = false;
                    }
                    i iVar5 = this.c.c;
                    Camera camera3 = iVar5.f528a;
                    if (camera3 != null) {
                        camera3.release();
                        iVar5.f528a = null;
                    }
                    break;
                } catch (Exception e10) {
                    Log.e("g", "Failed to close camera", e10);
                }
                g gVar4 = this.c;
                gVar4.f519g = true;
                gVar4.d.sendEmptyMessage(2131297789);
                p pVar = this.c.f516a;
                synchronized (pVar.e) {
                    int i10 = pVar.f385b - 1;
                    pVar.f385b = i10;
                    if (i10 == 0) {
                        synchronized (pVar.e) {
                            ((HandlerThread) pVar.d).quit();
                            pVar.d = null;
                            pVar.c = null;
                        }
                    }
                    break;
                }
                return;
        }
    }
}
