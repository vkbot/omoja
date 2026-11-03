package mega.blur.engine;

import android.content.Context;
import android.graphics.Bitmap;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class Blur implements BlurEngine {
    private static final String TAG = "Blur";
    private final BlurEngine mBlurEngine;

    public Blur(Context context, BlurConfig blurConfig) {
        RenderScriptBlur renderScriptBlur = new RenderScriptBlur(context, blurConfig);
        this.mBlurEngine = renderScriptBlur;
        MLog.d(TAG, "Used Blur Method: " + renderScriptBlur.methodDescription());
    }

    @Override // mega.blur.engine.BlurEngine
    public Bitmap execute(Bitmap bitmap, boolean z) {
        return this.mBlurEngine.execute(bitmap, z);
    }

    @Override // mega.blur.engine.BlurEngine
    public Bitmap execute(Bitmap bitmap, Bitmap bitmap2) {
        return this.mBlurEngine.execute(bitmap, bitmap2);
    }

    @Override // mega.blur.engine.BlurEngine
    public void execute(Bitmap bitmap, boolean z, BlurEngine.Callback callback) {
        this.mBlurEngine.execute(bitmap, z, callback);
    }

    @Override // mega.blur.engine.BlurEngine
    public void execute(Bitmap bitmap, Bitmap bitmap2, BlurEngine.Callback callback) {
        this.mBlurEngine.execute(bitmap, bitmap2, callback);
    }

    @Override // mega.blur.engine.BlurEngine
    public void destroy() {
        this.mBlurEngine.destroy();
    }

    @Override // mega.blur.engine.BlurEngine
    public String methodDescription() {
        return this.mBlurEngine.methodDescription();
    }
}
