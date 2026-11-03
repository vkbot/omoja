package org.libpag;

import android.content.res.AssetManager;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class PAGFile extends PAGComposition {

    public interface LoadListener {
        void onLoad(PAGFile pAGFile);
    }

    static {
        org.extra.tools.a.b("pag");
        nativeInit();
    }

    private PAGFile(long j) {
        super(j);
    }

    public static PAGFile Load(String str) throws Throwable {
        if (TextUtils.isEmpty(str) || !(str.startsWith("http://") || str.startsWith("https://"))) {
            return LoadFromPath(str);
        }
        byte[] bArrA = b.a(str);
        if (bArrA == null) {
            return null;
        }
        return LoadFromBytes(bArrA, bArrA.length, str);
    }

    public static void LoadAsync(final String str, final LoadListener loadListener) {
        NativeTask.Run(new Runnable() { // from class: org.libpag.PAGFile$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                PAGFile.a(str, loadListener);
            }
        });
    }

    private static native PAGFile LoadFromAssets(AssetManager assetManager, String str);

    private static native PAGFile LoadFromBytes(byte[] bArr, int i, String str);

    private static native PAGFile LoadFromPath(String str);

    public static native int MaxSupportedTagLevel();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, LoadListener loadListener) throws Throwable {
        PAGFile pAGFileLoad = Load(str);
        if (loadListener != null) {
            loadListener.onLoad(pAGFileLoad);
        }
    }

    private static final native void nativeInit();

    public native PAGFile copyOriginal();

    public native int[] getEditableIndices(int i);

    public native PAGLayer[] getLayersByEditableIndex(int i, int i2);

    public native PAGText getTextData(int i);

    public native void nativeReplaceImage(int i, long j);

    public native void nativeReplaceImageByName(String str, long j);

    public native int numImages();

    public native int numTexts();

    public native int numVideos();

    public native String path();

    public void replaceImage(int i, PAGImage pAGImage) {
        if (pAGImage == null) {
            nativeReplaceImage(i, 0L);
        } else {
            nativeReplaceImage(i, pAGImage.nativeContext);
        }
    }

    public void replaceImageByName(String str, PAGImage pAGImage) {
        if (pAGImage == null) {
            nativeReplaceImageByName(str, 0L);
        } else {
            nativeReplaceImageByName(str, pAGImage.nativeContext);
        }
    }

    public native void replaceText(int i, PAGText pAGText);

    public native void setDuration(long j);

    public native void setTimeStretchMode(int i);

    public native int tagLevel();

    public native int timeStretchMode();

    public static PAGFile Load(byte[] bArr) {
        return LoadFromBytes(bArr, bArr.length, "");
    }

    public static PAGFile Load(AssetManager assetManager, String str) {
        return LoadFromAssets(assetManager, str);
    }
}
