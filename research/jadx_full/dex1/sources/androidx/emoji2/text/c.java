package androidx.emoji2.text;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EmojiCompatInitializer$BackgroundDefaultLoader f175b;
    public final /* synthetic */ EmojiCompat$MetadataRepoLoaderCallback c;
    public final /* synthetic */ ThreadPoolExecutor d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(EmojiCompatInitializer$BackgroundDefaultLoader emojiCompatInitializer$BackgroundDefaultLoader, EmojiCompat$MetadataRepoLoaderCallback emojiCompat$MetadataRepoLoaderCallback, ThreadPoolExecutor threadPoolExecutor) {
        this.f175b = emojiCompatInitializer$BackgroundDefaultLoader;
        this.c = emojiCompat$MetadataRepoLoaderCallback;
        this.d = threadPoolExecutor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        EmojiCompatInitializer$BackgroundDefaultLoader.a(this.f175b, this.c, this.d);
    }
}
