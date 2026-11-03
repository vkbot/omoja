package mega.blur.engine;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface BlurEngine {

    public interface Callback {
        void onFinished(Bitmap bitmap);
    }

    void destroy();

    Bitmap execute(Bitmap bitmap, Bitmap bitmap2);

    Bitmap execute(Bitmap bitmap, boolean z);

    void execute(Bitmap bitmap, Bitmap bitmap2, Callback callback);

    void execute(Bitmap bitmap, boolean z, Callback callback);

    String methodDescription();
}
