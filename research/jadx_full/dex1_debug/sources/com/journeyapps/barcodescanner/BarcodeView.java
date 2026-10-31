package com.journeyapps.barcodescanner;

import a.a;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.media.h;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceView;
import android.view.TextureView;
import b7.b;
import b7.f;
import b7.k;
import b7.l;
import b7.m;
import b7.n;
import b7.p;
import b7.q;
import b7.r;
import b7.t;
import c7.g;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Set;
import z5.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class BarcodeView extends f {
    public int B;
    public h C;
    public n D;
    public l E;
    public final Handler F;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.B = 1;
        this.C = null;
        b bVar = new b(this, 0);
        this.E = new p(0);
        this.F = new Handler(bVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final k f() {
        k kVar;
        if (this.E == null) {
            this.E = new p(0);
        }
        m mVar = new m();
        HashMap map = new HashMap();
        map.put(d.f6320k, mVar);
        p pVar = (p) this.E;
        pVar.getClass();
        EnumMap enumMap = new EnumMap(d.class);
        enumMap.putAll(map);
        EnumMap enumMap2 = (EnumMap) pVar.d;
        if (enumMap2 != null) {
            enumMap.putAll(enumMap2);
        }
        Set set = (Set) pVar.c;
        if (set != null) {
            enumMap.put(d.d, set);
        }
        String str = (String) pVar.e;
        if (str != null) {
            enumMap.put(d.f6315f, str);
        }
        z5.h hVar = new z5.h();
        hVar.c(enumMap);
        int i9 = pVar.f385b;
        if (i9 == 0) {
            kVar = new k(hVar);
        } else if (i9 == 1) {
            kVar = new q(hVar);
        } else if (i9 != 2) {
            kVar = new k(hVar);
        } else {
            r rVar = new r(hVar);
            rVar.c = true;
            kVar = rVar;
        }
        mVar.f375a = kVar;
        return kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        TextureView textureView;
        SurfaceView surfaceView;
        i();
        a.y();
        Log.d("f", "pause()");
        this.f345j = -1;
        g gVar = this.f340b;
        if (gVar != null) {
            a.y();
            if (gVar.f518f) {
                gVar.f516a.d(gVar.f524l);
            } else {
                gVar.f519g = true;
            }
            gVar.f518f = false;
            this.f340b = null;
            this.f343h = false;
        } else {
            this.d.sendEmptyMessage(2131297789);
        }
        if (this.f352q == null && (surfaceView = this.f341f) != null) {
            surfaceView.getHolder().removeCallback(this.f356x);
        }
        if (this.f352q == null && (textureView = this.f342g) != null) {
            textureView.setSurfaceTextureListener(null);
        }
        this.f349n = null;
        this.f350o = null;
        this.f353s = null;
        p pVar = this.f344i;
        t tVar = (t) pVar.d;
        if (tVar != null) {
            tVar.disable();
        }
        pVar.d = null;
        pVar.c = null;
        pVar.e = null;
        this.f358z.j();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l getDecoderFactory() {
        return this.E;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        i();
        if (this.B == 1 || !this.f343h) {
            return;
        }
        n nVar = new n(getCameraInstance(), f(), this.F);
        this.D = nVar;
        nVar.f378f = getPreviewFramingRect();
        n nVar2 = this.D;
        nVar2.getClass();
        a.y();
        HandlerThread handlerThread = new HandlerThread("n");
        nVar2.f377b = handlerThread;
        handlerThread.start();
        nVar2.c = new Handler(nVar2.f377b.getLooper(), nVar2.f381i);
        nVar2.f379g = true;
        g gVar = nVar2.f376a;
        gVar.f520h.post(new c7.d(gVar, nVar2.f382j, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i() {
        n nVar = this.D;
        if (nVar != null) {
            a.y();
            synchronized (nVar.f380h) {
                nVar.f379g = false;
                nVar.c.removeCallbacksAndMessages(null);
                nVar.f377b.quit();
            }
            this.D = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDecoderFactory(l lVar) {
        a.y();
        this.E = lVar;
        n nVar = this.D;
        if (nVar != null) {
            nVar.d = f();
        }
    }
}
