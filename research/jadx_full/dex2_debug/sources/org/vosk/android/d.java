package org.vosk.android;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class d implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ SpeechStreamService$RecognizerThread c;
    public final /* synthetic */ String d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(SpeechStreamService$RecognizerThread speechStreamService$RecognizerThread, String str, int i) {
        this.b = i;
        this.c = speechStreamService$RecognizerThread;
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                SpeechStreamService$RecognizerThread.c(this.c, this.d);
                break;
            case 1:
                SpeechStreamService$RecognizerThread.e(this.c, this.d);
                break;
            default:
                SpeechStreamService$RecognizerThread.a(this.c, this.d);
                break;
        }
    }
}
