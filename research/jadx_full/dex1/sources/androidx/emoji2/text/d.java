package androidx.emoji2.text;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f176b;
    public final /* synthetic */ FontRequestEmojiCompatConfig$FontRequestMetadataLoader c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(FontRequestEmojiCompatConfig$FontRequestMetadataLoader fontRequestEmojiCompatConfig$FontRequestMetadataLoader, int i9) {
        this.f176b = i9;
        this.c = fontRequestEmojiCompatConfig$FontRequestMetadataLoader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f176b) {
            case 0:
                this.c.createMetadata();
                break;
            default:
                this.c.loadInternal();
                break;
        }
    }
}
