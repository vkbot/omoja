package androidx.emoji2.text;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontRequestEmojiCompatConfig$FontRequestMetadataLoader$1 extends ContentObserver {
    final /* synthetic */ FontRequestEmojiCompatConfig$FontRequestMetadataLoader this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FontRequestEmojiCompatConfig$FontRequestMetadataLoader$1(FontRequestEmojiCompatConfig$FontRequestMetadataLoader fontRequestEmojiCompatConfig$FontRequestMetadataLoader, Handler handler) {
        super(handler);
        this.this$0 = fontRequestEmojiCompatConfig$FontRequestMetadataLoader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.ContentObserver
    public void onChange(boolean z8, Uri uri) {
        this.this$0.loadInternal();
    }
}
