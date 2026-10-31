package androidx.emoji2.text;

import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class EmojiExclusions {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private EmojiExclusions() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Set<int[]> getEmojiExclusions() {
        return Build$VERSION.SDK_INT >= 34 ? EmojiExclusions$EmojiExclusions_Api34.getExclusions() : EmojiExclusions$EmojiExclusions_Reflections.getExclusions();
    }
}
