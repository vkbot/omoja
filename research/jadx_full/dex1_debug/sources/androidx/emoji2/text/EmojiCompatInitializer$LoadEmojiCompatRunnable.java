package androidx.emoji2.text;

import androidx.core.os.TraceCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class EmojiCompatInitializer$LoadEmojiCompatRunnable implements Runnable {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        try {
            TraceCompat.beginSection("EmojiCompat.EmojiCompatInitializer.run");
            if (EmojiCompat.isConfigured()) {
                EmojiCompat.get().load();
            }
        } finally {
            TraceCompat.endSection();
        }
    }
}
