package androidx.core.provider;

import androidx.collection.SimpleArrayMap;
import androidx.core.util.Consumer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontRequestWorker$4 implements Consumer<FontRequestWorker$TypefaceResult> {
    final /* synthetic */ String val$id;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FontRequestWorker$4(String str) {
        this.val$id = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: accept, reason: avoid collision after fix types in other method */
    public void accept2(FontRequestWorker$TypefaceResult fontRequestWorker$TypefaceResult) {
        synchronized (FontRequestWorker.LOCK) {
            try {
                SimpleArrayMap<String, ArrayList<Consumer<FontRequestWorker$TypefaceResult>>> simpleArrayMap = FontRequestWorker.PENDING_REPLIES;
                ArrayList<Consumer<FontRequestWorker$TypefaceResult>> arrayList = simpleArrayMap.get(this.val$id);
                if (arrayList == null) {
                    return;
                }
                simpleArrayMap.remove(this.val$id);
                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                    arrayList.get(i9).accept(fontRequestWorker$TypefaceResult);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.core.util.Consumer
    public /* bridge */ /* synthetic */ void accept(FontRequestWorker$TypefaceResult fontRequestWorker$TypefaceResult) {
        accept2(fontRequestWorker$TypefaceResult);
    }
}
