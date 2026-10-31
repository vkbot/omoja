package androidx.core.provider;

import androidx.core.util.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontRequestWorker$2 implements Consumer<FontRequestWorker$TypefaceResult> {
    final /* synthetic */ CallbackWithHandler val$callback;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FontRequestWorker$2(CallbackWithHandler callbackWithHandler) {
        this.val$callback = callbackWithHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: accept, reason: avoid collision after fix types in other method */
    public void accept2(FontRequestWorker$TypefaceResult fontRequestWorker$TypefaceResult) {
        if (fontRequestWorker$TypefaceResult == null) {
            fontRequestWorker$TypefaceResult = new FontRequestWorker$TypefaceResult(-3);
        }
        this.val$callback.onTypefaceResult(fontRequestWorker$TypefaceResult);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.core.util.Consumer
    public /* bridge */ /* synthetic */ void accept(FontRequestWorker$TypefaceResult fontRequestWorker$TypefaceResult) {
        accept2(fontRequestWorker$TypefaceResult);
    }
}
