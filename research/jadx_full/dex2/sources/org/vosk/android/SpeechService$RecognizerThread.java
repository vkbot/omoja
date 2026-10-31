package org.vosk.android;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class SpeechService$RecognizerThread extends Thread {
    private static final int NO_TIMEOUT = -1;
    RecognitionListener listener;
    private volatile boolean paused;
    private int remainingSamples;
    private volatile boolean reset;
    final /* synthetic */ SpeechService this$0;
    private final int timeoutSamples;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpeechService$RecognizerThread(SpeechService speechService, RecognitionListener recognitionListener, int i) {
        this.this$0 = speechService;
        this.paused = false;
        this.reset = false;
        this.listener = recognitionListener;
        if (i != -1) {
            this.timeoutSamples = (SpeechService.access$000(speechService) * i) / 1000;
        } else {
            this.timeoutSamples = -1;
        }
        this.remainingSamples = this.timeoutSamples;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(SpeechService$RecognizerThread speechService$RecognizerThread) {
        speechService$RecognizerThread.lambda$run$3();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(SpeechService$RecognizerThread speechService$RecognizerThread, String str) {
        speechService$RecognizerThread.lambda$run$1(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(SpeechService$RecognizerThread speechService$RecognizerThread, String str) {
        speechService$RecognizerThread.lambda$run$4(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void d(SpeechService$RecognizerThread speechService$RecognizerThread, IOException iOException) {
        speechService$RecognizerThread.lambda$run$0(iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void e(SpeechService$RecognizerThread speechService$RecognizerThread, String str) {
        speechService$RecognizerThread.lambda$run$2(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$run$0(IOException iOException) {
        this.listener.onError(iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$run$1(String str) {
        this.listener.onResult(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$run$2(String str) {
        this.listener.onPartialResult(str);
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
    public void reset() {
        this.reset = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        SpeechService.access$100(this.this$0).startRecording();
        if (SpeechService.access$100(this.this$0).getRecordingState() == 1) {
            SpeechService.access$100(this.this$0).stop();
            SpeechService.access$200(this.this$0).post(new a(0, this, new IOException("Failed to start recording. Microphone might be already in use.")));
        }
        int iAccess$300 = SpeechService.access$300(this.this$0);
        short[] sArr = new short[iAccess$300];
        while (!Thread.interrupted() && (this.timeoutSamples == -1 || this.remainingSamples > 0)) {
            int i = SpeechService.access$100(this.this$0).read(sArr, 0, iAccess$300);
            if (!this.paused) {
                if (this.reset) {
                    SpeechService.access$400(this.this$0).reset();
                    this.reset = false;
                }
                if (i < 0) {
                    ai.onnxruntime.b.h("error reading audio buffer");
                    return;
                }
                boolean zAcceptWaveForm = SpeechService.access$400(this.this$0).acceptWaveForm(sArr, i);
                SpeechService speechService = this.this$0;
                if (zAcceptWaveForm) {
                    SpeechService.access$200(this.this$0).post(new b(this, SpeechService.access$400(speechService).getResult(), 0));
                } else {
                    SpeechService.access$200(this.this$0).post(new b(this, SpeechService.access$400(speechService).getPartialResult(), 1));
                }
                if (this.timeoutSamples != -1) {
                    this.remainingSamples -= i;
                }
            }
        }
        SpeechService.access$100(this.this$0).stop();
        if (this.paused) {
            return;
        }
        if (this.timeoutSamples != -1 && this.remainingSamples <= 0) {
            SpeechService.access$200(this.this$0).post(new c(this, 0));
        } else {
            SpeechService.access$200(this.this$0).post(new b(this, SpeechService.access$400(this.this$0).getFinalResult(), 2));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPause(boolean z) {
        this.paused = z;
    }

    public SpeechService$RecognizerThread(SpeechService speechService, RecognitionListener recognitionListener) {
        this(speechService, recognitionListener, -1);
    }
}
