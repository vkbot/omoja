package mega.blur.engine;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Debug;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class RenderScriptBlur implements BlurEngine {
    private static final String TAG = "RenderScriptBlur";
    private final BlurConfig mBlurConfig;
    private int mHeight;
    private Allocation mInput;
    private Allocation mOutput;
    private final RenderScript mRs;
    private final ScriptIntrinsicBlur mScriptBlur;
    private int mWidth;
    private final Object mLock = new Object();
    private final List<AsyncTask> mAsyncTasks = new LinkedList();

    @Override // mega.blur.engine.BlurEngine
    public String methodDescription() {
        return "RenderScript's ScriptIntrinsicBlur";
    }

    public RenderScriptBlur(Context context, BlurConfig blurConfig) {
        this.mBlurConfig = blurConfig;
        RenderScript renderScriptCreate = RenderScript.create(context);
        this.mRs = renderScriptCreate;
        this.mScriptBlur = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
    }

    @Override // mega.blur.engine.BlurEngine
    public Bitmap execute(Bitmap bitmap, boolean z) {
        return blur(bitmap, z ? bitmap : bitmap.copy(bitmap.getConfig(), true));
    }

    @Override // mega.blur.engine.BlurEngine
    public Bitmap execute(Bitmap bitmap, Bitmap bitmap2) {
        return blur(bitmap, bitmap2);
    }

    @Override // mega.blur.engine.BlurEngine
    public void execute(Bitmap bitmap, boolean z, BlurEngine.Callback callback) {
        this.mAsyncTasks.add(new BlurAsyncTask(bitmap, z ? bitmap : bitmap.copy(bitmap.getConfig(), true), callback).execute(new Void[0]));
    }

    @Override // mega.blur.engine.BlurEngine
    public void execute(Bitmap bitmap, Bitmap bitmap2, BlurEngine.Callback callback) {
        this.mAsyncTasks.add(new BlurAsyncTask(bitmap, bitmap2, callback).execute(new Void[0]));
    }

    @Override // mega.blur.engine.BlurEngine
    public void destroy() {
        Iterator<AsyncTask> it = this.mAsyncTasks.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
        this.mAsyncTasks.clear();
        synchronized (this.mLock) {
            RenderScript renderScript = this.mRs;
            if (renderScript != null) {
                renderScript.destroy();
            }
            ScriptIntrinsicBlur scriptIntrinsicBlur = this.mScriptBlur;
            if (scriptIntrinsicBlur != null) {
                scriptIntrinsicBlur.destroy();
            }
            destroyInputOutput();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap blur(Bitmap bitmap, Bitmap bitmap2) {
        long jThreadCpuTimeNanos = Debug.threadCpuTimeNanos();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        synchronized (this.mLock) {
            if (this.mInput == null || this.mWidth != width || this.mHeight != height) {
                this.mWidth = width;
                this.mHeight = height;
                destroyInputOutput();
                Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.mRs, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
                this.mInput = allocationCreateFromBitmap;
                this.mOutput = Allocation.createTyped(this.mRs, allocationCreateFromBitmap.getType());
            }
            this.mInput.copyFrom(bitmap);
            this.mScriptBlur.setRadius(this.mBlurConfig.radius());
            this.mScriptBlur.setInput(this.mInput);
            this.mScriptBlur.forEach(this.mOutput);
            this.mOutput.copyTo(bitmap2);
        }
        if (jThreadCpuTimeNanos > 0) {
            MLog.d(TAG, String.format(Locale.US, "RenderScriptBlur took %d ms.", Long.valueOf((Debug.threadCpuTimeNanos() - jThreadCpuTimeNanos) / 1000000)));
        }
        return bitmap2;
    }

    private void destroyInputOutput() {
        Allocation allocation = this.mInput;
        if (allocation != null) {
            allocation.destroy();
            this.mInput = null;
        }
        Allocation allocation2 = this.mOutput;
        if (allocation2 != null) {
            allocation2.destroy();
            this.mOutput = null;
        }
    }

    private final class BlurAsyncTask extends AsyncTask<Void, Void, Bitmap> {
        private final BlurEngine.Callback mCallback;
        private final Bitmap mInBitmap;
        private final Bitmap mOutBitmap;

        public BlurAsyncTask(Bitmap bitmap, Bitmap bitmap2, BlurEngine.Callback callback) {
            this.mInBitmap = bitmap;
            this.mOutBitmap = bitmap2;
            this.mCallback = callback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Void... voidArr) {
            if (isCancelled()) {
                return null;
            }
            MLog.d(RenderScriptBlur.TAG, "Running in background...");
            return RenderScriptBlur.this.blur(this.mInBitmap, this.mOutBitmap);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(Bitmap bitmap) {
            RenderScriptBlur.this.mAsyncTasks.remove(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            this.mCallback.onFinished(bitmap);
            RenderScriptBlur.this.mAsyncTasks.remove(this);
        }
    }
}
