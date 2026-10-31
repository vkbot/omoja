package androidx.emoji2.text;

import android.content.Context;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
public class EmojiCompatInitializer$BackgroundDefaultConfig extends EmojiCompat$Config {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiCompatInitializer$BackgroundDefaultConfig(Context context) {
        super(new EmojiCompatInitializer$BackgroundDefaultLoader(context));
        setMetadataLoadStrategy(1);
    }
}
