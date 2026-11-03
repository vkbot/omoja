package org.libpag;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.opengl.EGLContext;
import android.util.AttributeSet;
import android.view.TextureView;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class PAGView extends TextureView implements TextureView.SurfaceTextureListener, org.extra.tools.d, PAGAnimator.Listener {
    private TextureView.SurfaceTextureListener a;
    private PAGPlayer b;
    private PAGSurface c;
    private PAGAnimator d;
    private String e;
    private boolean f;
    private EGLContext g;
    private ArrayList h;
    private ArrayList i;
    private boolean j;

    @Deprecated
    public interface PAGFlushListener {
        void onFlush();
    }

    public interface PAGViewListener {
        void onAnimationCancel(PAGView pAGView);

        void onAnimationEnd(PAGView pAGView);

        void onAnimationRepeat(PAGView pAGView);

        void onAnimationStart(PAGView pAGView);

        void onAnimationUpdate(PAGView pAGView);
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean zIsOpaque = PAGView.this.isOpaque();
            PAGView.this.setOpaque(!zIsOpaque);
            PAGView.this.setOpaque(zIsOpaque);
        }
    }

    class b implements Runnable {
        final /* synthetic */ SurfaceTexture a;

        b(SurfaceTexture surfaceTexture) {
            this.a = surfaceTexture;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.release();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList;
            synchronized (PAGView.this) {
                arrayList = new ArrayList(PAGView.this.i);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((PAGFlushListener) it.next()).onFlush();
            }
        }
    }

    public PAGView(Context context) {
        super(context);
        this.e = "";
        this.f = false;
        this.g = null;
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = false;
        b();
    }

    private void b() {
        org.extra.tools.b.a().a(this);
        setOpaque(false);
        this.b = new PAGPlayer();
        setSurfaceTextureListener(this);
        this.d = PAGAnimator.a(getContext(), this);
    }

    private void c() {
        post(new a());
    }

    public void addListener(PAGViewListener pAGViewListener) {
        synchronized (this) {
            this.h.add(pAGViewListener);
        }
    }

    @Deprecated
    public void addPAGFlushListener(PAGFlushListener pAGFlushListener) {
        synchronized (this) {
            this.i.add(pAGFlushListener);
        }
    }

    public boolean cacheEnabled() {
        return this.b.cacheEnabled();
    }

    public float cacheScale() {
        return this.b.cacheScale();
    }

    public long currentFrame() {
        return this.b.currentFrame();
    }

    public long duration() {
        return this.b.duration();
    }

    public boolean flush() {
        return this.b.flush();
    }

    public RectF getBounds(PAGLayer pAGLayer) {
        return pAGLayer != null ? this.b.getBounds(pAGLayer) : new RectF();
    }

    public PAGComposition getComposition() {
        return this.b.getComposition();
    }

    public PAGLayer[] getLayersUnderPoint(float f, float f2) {
        return this.b.getLayersUnderPoint(f, f2);
    }

    public String getPath() {
        return this.e;
    }

    public double getProgress() {
        return this.b.getProgress();
    }

    public boolean isPlaying() {
        return this.d.isRunning();
    }

    public boolean isSync() {
        return this.d.isSync();
    }

    public Matrix matrix() {
        return this.b.matrix();
    }

    public float maxFrameRate() {
        return this.b.maxFrameRate();
    }

    @Override // org.libpag.PAGAnimator.Listener
    public void onAnimationCancel(PAGAnimator pAGAnimator) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.h);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGViewListener) it.next()).onAnimationCancel(this);
        }
    }

    @Override // org.libpag.PAGAnimator.Listener
    public void onAnimationEnd(PAGAnimator pAGAnimator) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.h);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGViewListener) it.next()).onAnimationEnd(this);
        }
    }

    @Override // org.libpag.PAGAnimator.Listener
    public void onAnimationRepeat(PAGAnimator pAGAnimator) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.h);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGViewListener) it.next()).onAnimationRepeat(this);
        }
    }

    @Override // org.libpag.PAGAnimator.Listener
    public void onAnimationStart(PAGAnimator pAGAnimator) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.h);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((PAGViewListener) it.next()).onAnimationStart(this);
        }
    }

    @Override // org.libpag.PAGAnimator.Listener
    public void onAnimationUpdate(PAGAnimator pAGAnimator) {
        ArrayList arrayList;
        this.b.setProgress(pAGAnimator.progress());
        synchronized (this) {
            if (this.f) {
                if (this.j) {
                    pAGAnimator.setDuration(this.b.duration());
                }
                if (flush()) {
                    c();
                }
                synchronized (this) {
                    arrayList = new ArrayList(this.h);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationUpdate(this);
                }
                if (this.i.isEmpty()) {
                    return;
                }
                post(new c());
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.b.setSurface(null);
        TextureView.SurfaceTextureListener surfaceTextureListener = this.a;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureDestroyed(surfaceTexture);
        }
        PAGSurface pAGSurface = this.c;
        if (pAGSurface != null) {
            pAGSurface.freeCache();
        }
        post(new b(surfaceTexture));
        return false;
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        a();
    }

    public void pause() {
        this.d.cancel();
    }

    public void play() {
        this.b.prepare();
        this.d.a();
    }

    public void removeListener(PAGViewListener pAGViewListener) {
        synchronized (this) {
            this.h.remove(pAGViewListener);
        }
    }

    @Deprecated
    public void removePAGFlushListener(PAGFlushListener pAGFlushListener) {
        synchronized (this) {
            this.i.remove(pAGFlushListener);
        }
    }

    public int repeatCount() {
        return this.d.repeatCount();
    }

    public int scaleMode() {
        return this.b.scaleMode();
    }

    @Override // android.view.TextureView, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    public void setCacheEnabled(boolean z) {
        this.b.setCacheEnabled(z);
    }

    public void setCacheScale(float f) {
        this.b.setCacheScale(f);
    }

    public void setMatrix(Matrix matrix) {
        this.b.setMatrix(matrix);
    }

    public void setMaxFrameRate(float f) {
        this.b.setMaxFrameRate(f);
    }

    public boolean setPath(String str) {
        PAGFile pAGFileLoad = (str == null || !str.startsWith("assets://")) ? PAGFile.Load(str) : PAGFile.Load(getContext().getAssets(), str.substring(9));
        setComposition(pAGFileLoad);
        this.e = str;
        return pAGFileLoad != null;
    }

    public void setPathAsync(final String str, final PAGFile.LoadListener loadListener) {
        NativeTask.Run(new Runnable() { // from class: org.libpag.PAGView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str, loadListener);
            }
        });
    }

    public void setProgress(double d) {
        this.b.setProgress(d);
        this.d.setProgress(this.b.getProgress());
        this.d.update();
    }

    public void setRepeatCount(int i) {
        this.d.setRepeatCount(i);
    }

    public void setScaleMode(int i) {
        this.b.setScaleMode(i);
    }

    @Override // android.view.TextureView
    public void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        if (surfaceTextureListener == this) {
            super.setSurfaceTextureListener(surfaceTextureListener);
        } else {
            this.a = surfaceTextureListener;
        }
    }

    public void setSync(boolean z) {
        this.d.setSync(z);
    }

    public void setUseDiskCache(boolean z) {
        this.b.setUseDiskCache(z);
    }

    public void setVideoEnabled(boolean z) {
        this.b.setVideoEnabled(z);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        a();
    }

    public void stop() {
        this.d.cancel();
    }

    public boolean useDiskCache() {
        return this.b.useDiskCache();
    }

    public boolean videoEnabled() {
        return this.b.videoEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, PAGFile.LoadListener loadListener) {
        setPath(str);
        if (loadListener != null) {
            loadListener.onLoad((PAGFile) this.b.getComposition());
        }
    }

    public void freeCache() {
        PAGSurface pAGSurface = this.c;
        if (pAGSurface != null) {
            pAGSurface.freeCache();
        }
    }

    public Bitmap makeSnapshot() {
        PAGSurface pAGSurface = this.c;
        if (pAGSurface != null) {
            return pAGSurface.makeSnapshot();
        }
        return null;
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        this.f = true;
        super.onAttachedToWindow();
        a();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.f = false;
        super.onDetachedFromWindow();
        PAGSurface pAGSurface = this.c;
        if (pAGSurface != null) {
            pAGSurface.release();
            this.c = null;
        }
        a();
    }

    @Override // org.extra.tools.d
    public void onResume() {
        if (this.j) {
            setVisibility(4);
            setVisibility(0);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        PAGSurface pAGSurface = this.c;
        if (pAGSurface != null) {
            pAGSurface.release();
            this.c = null;
        }
        PAGSurface pAGSurfaceFromSurfaceTexture = PAGSurface.FromSurfaceTexture(surfaceTexture, this.g);
        this.c = pAGSurfaceFromSurfaceTexture;
        this.b.setSurface(pAGSurfaceFromSurfaceTexture);
        PAGSurface pAGSurface2 = this.c;
        if (pAGSurface2 == null) {
            return;
        }
        pAGSurface2.clearAll();
        this.d.update();
        TextureView.SurfaceTextureListener surfaceTextureListener = this.a;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureAvailable(surfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        PAGSurface pAGSurface = this.c;
        if (pAGSurface != null) {
            pAGSurface.updateSize();
            this.c.clearAll();
            this.d.update();
        }
        TextureView.SurfaceTextureListener surfaceTextureListener = this.a;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureSizeChanged(surfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        TextureView.SurfaceTextureListener surfaceTextureListener = this.a;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureUpdated(surfaceTexture);
        }
    }

    public void setComposition(PAGComposition pAGComposition) {
        this.e = null;
        this.b.setComposition(pAGComposition);
        this.d.setProgress(this.b.getProgress());
        if (this.j) {
            this.d.setDuration(this.b.duration());
        }
    }

    private void a() {
        boolean z = this.f && isShown();
        if (this.j == z) {
            return;
        }
        this.j = z;
        if (z) {
            this.d.setDuration(this.b.duration());
            this.d.update();
        } else {
            this.d.setDuration(0L);
        }
    }

    public PAGView(Context context, EGLContext eGLContext) {
        super(context);
        this.e = "";
        this.f = false;
        this.g = null;
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = false;
        this.g = eGLContext;
        b();
    }

    public PAGView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = "";
        this.f = false;
        this.g = null;
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = false;
        b();
    }

    public PAGView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = "";
        this.f = false;
        this.g = null;
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = false;
        b();
    }
}
