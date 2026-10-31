package org.vosk.android;

/* JADX INFO: renamed from: org.vosk.android.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class RunnableC2942c implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8163b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Thread f8164c;

    public /* synthetic */ RunnableC2942c(Thread thread, int i10) {
        this.f8163b = i10;
        this.f8164c = thread;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8163b) {
            case 0:
                ((SpeechService.RecognizerThread) this.f8164c).lambda$run$3();
                break;
            default:
                ((SpeechStreamService.RecognizerThread) this.f8164c).lambda$run$3();
                break;
        }
    }
}
