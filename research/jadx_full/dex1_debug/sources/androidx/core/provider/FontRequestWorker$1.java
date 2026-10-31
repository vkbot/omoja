package androidx.core.provider;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontRequestWorker$1 implements Callable<FontRequestWorker$TypefaceResult> {
    final /* synthetic */ Context val$context;
    final /* synthetic */ String val$id;
    final /* synthetic */ FontRequest val$request;
    final /* synthetic */ int val$style;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FontRequestWorker$1(String str, Context context, FontRequest fontRequest, int i9) {
        this.val$id = str;
        this.val$context = context;
        this.val$request = fontRequest;
        this.val$style = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public FontRequestWorker$TypefaceResult call() {
        return FontRequestWorker.getFontSync(this.val$id, this.val$context, this.val$request, this.val$style);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ FontRequestWorker$TypefaceResult call() {
        return call();
    }
}
