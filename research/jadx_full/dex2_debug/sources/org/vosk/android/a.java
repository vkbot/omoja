package org.vosk.android;

import java.io.IOException;
import org.vosk.Model;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i, Object obj, Object obj2) {
        this.b = i;
        this.d = obj;
        this.c = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                SpeechService$RecognizerThread.d((SpeechService$RecognizerThread) this.d, (IOException) this.c);
                break;
            case 1:
                SpeechStreamService$RecognizerThread.d((SpeechStreamService$RecognizerThread) this.d, (IOException) this.c);
                break;
            case 2:
                StorageService.b((StorageService$Callback) this.d, (Model) this.c);
                break;
            default:
                StorageService.c((StorageService$Callback) this.d, (IOException) this.c);
                break;
        }
    }
}
