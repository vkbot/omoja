package androidx.emoji2.text;

/* JADX INFO: renamed from: androidx.emoji2.text.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0486d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f421b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ FontRequestEmojiCompatConfig.FontRequestMetadataLoader f422c;

    public /* synthetic */ RunnableC0486d(FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader, int i10) {
        this.f421b = i10;
        this.f422c = fontRequestMetadataLoader;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f421b) {
            case 0:
                this.f422c.createMetadata();
                break;
            default:
                this.f422c.loadInternal();
                break;
        }
    }
}
