package org.vosk.android;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class SpeechStreamService$RecognizerThread extends Thread {
    private static final int NO_TIMEOUT = -1;
    RecognitionListener listener;
    private int remainingSamples;
    final /* synthetic */ SpeechStreamService this$0;
    private final int timeoutSamples;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpeechStreamService$RecognizerThread(SpeechStreamService speechStreamService, RecognitionListener recognitionListener, int i) {
        this.this$0 = speechStreamService;
        this.listener = recognitionListener;
        if (i != -1) {
            this.timeoutSamples = (SpeechStreamService.access$000(speechStreamService) * i) / 1000;
        } else {
            this.timeoutSamples = -1;
        }
        this.remainingSamples = this.timeoutSamples;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(SpeechStreamService$RecognizerThread speechStreamService$RecognizerThread, String str) {
        speechStreamService$RecognizerThread.lambda$run$4(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(SpeechStreamService$RecognizerThread speechStreamService$RecognizerThread) {
        speechStreamService$RecognizerThread.lambda$run$3();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(SpeechStreamService$RecognizerThread speechStreamService$RecognizerThread, String str) {
        speechStreamService$RecognizerThread.lambda$run$0(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void d(SpeechStreamService$RecognizerThread speechStreamService$RecognizerThread, IOException iOException) {
        speechStreamService$RecognizerThread.lambda$run$2(iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void e(SpeechStreamService$RecognizerThread speechStreamService$RecognizerThread, String str) {
        speechStreamService$RecognizerThread.lambda$run$1(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$run$0(String str) {
        this.listener.onResult(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$run$1(String str) {
        this.listener.onPartialResult(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$run$2(IOException iOException) {
        this.listener.onError(iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$run$3() {
        this.listener.onTimeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$run$4(String str) {
        this.listener.onFinalResult(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int iAccess$100 = SpeechStreamService.access$100(this.this$0);
        byte[] bArr = new byte[iAccess$100];
        while (!Thread.interrupted() && (this.timeoutSamples == -1 || this.remainingSamples > 0)) {
            try {
                int i = SpeechStreamService.access$200(this.this$0).read(bArr, 0, iAccess$100);
                if (i < 0) {
                    break;
                }
                boolean zAcceptWaveForm = SpeechStreamService.access$300(this.this$0).acceptWaveForm(bArr, i);
                SpeechStreamService speechStreamService = this.this$0;
                if (zAcceptWaveForm) {
                    SpeechStreamService.access$400(this.this$0).post(new d(this, SpeechStreamService.access$300(speechStreamService).getResult(), 0));
                } else {
                    SpeechStreamService.access$400(this.this$0).post(new d(this, SpeechStreamService.access$300(speechStreamService).getPartialResult(), 1));
                }
                if (this.timeoutSamples != -1) {
                    this.remainingSamples -= i;
                }
            } catch (IOException e) {
                SpeechStreamService.access$400(this.this$0).post(new a(1, this, e));
            }
        }
        if (this.timeoutSamples != -1 && this.remainingSamples <= 0) {
            SpeechStreamService.access$400(this.this$0).post(new c(this, 1));
        } else {
            SpeechStreamService.access$400(this.this$0).post(new d(this, SpeechStreamService.access$300(this.this$0).getFinalResult(), 2));
        }
    }

    public SpeechStreamService$RecognizerThread(SpeechStreamService speechStreamService, RecognitionListener recognitionListener) {
        this(speechStreamService, recognitionListener, -1);
    }
}
