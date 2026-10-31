package org.vosk.android;

import ai.onnxruntime.C0075b;
import android.media.AudioRecord;
import android.os.Handler;
import android.os.Looper;
import java.io.IOException;
import org.vosk.Recognizer;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SpeechService {
    private static final float BUFFER_SIZE_SECONDS = 0.2f;
    private final int bufferSize;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Recognizer recognizer;
    private RecognizerThread recognizerThread;
    private final AudioRecord recorder;
    private final int sampleRate;

    public SpeechService(Recognizer recognizer, float f8) throws IOException {
        this.recognizer = recognizer;
        int i10 = (int) f8;
        this.sampleRate = i10;
        int iRound = Math.round(i10 * 0.2f);
        this.bufferSize = iRound;
        AudioRecord audioRecord = new AudioRecord(6, i10, 16, 2, iRound * 2);
        this.recorder = audioRecord;
        if (audioRecord.getState() != 0) {
            return;
        }
        audioRecord.release();
        C2467b.m3820A("Failed to initialize recorder. Microphone might be already in use.");
        throw null;
    }

    private boolean stopRecognizerThread() {
        RecognizerThread recognizerThread = this.recognizerThread;
        if (recognizerThread == null) {
            return false;
        }
        try {
            recognizerThread.interrupt();
            this.recognizerThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
        this.recognizerThread = null;
        return true;
    }

    public boolean cancel() {
        RecognizerThread recognizerThread = this.recognizerThread;
        if (recognizerThread != null) {
            recognizerThread.setPause(true);
        }
        return stopRecognizerThread();
    }

    public void reset() {
        RecognizerThread recognizerThread = this.recognizerThread;
        if (recognizerThread != null) {
            recognizerThread.reset();
        }
    }

    public void setPause(boolean z9) {
        RecognizerThread recognizerThread = this.recognizerThread;
        if (recognizerThread != null) {
            recognizerThread.setPause(z9);
        }
    }

    public void shutdown() {
        this.recorder.release();
    }

    public boolean startListening(RecognitionListener recognitionListener) {
        if (this.recognizerThread != null) {
            return false;
        }
        RecognizerThread recognizerThread = new RecognizerThread(this, recognitionListener);
        this.recognizerThread = recognizerThread;
        recognizerThread.start();
        return true;
    }

    public boolean stop() {
        return stopRecognizerThread();
    }

    public boolean startListening(RecognitionListener recognitionListener, int i10) {
        if (this.recognizerThread != null) {
            return false;
        }
        RecognizerThread recognizerThread = new RecognizerThread(recognitionListener, i10);
        this.recognizerThread = recognizerThread;
        recognizerThread.start();
        return true;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public final class RecognizerThread extends Thread {
        private static final int NO_TIMEOUT = -1;
        RecognitionListener listener;
        private volatile boolean paused;
        private int remainingSamples;
        private volatile boolean reset;
        private final int timeoutSamples;

        public RecognizerThread(RecognitionListener recognitionListener, int i10) {
            this.paused = false;
            this.reset = false;
            this.listener = recognitionListener;
            if (i10 != -1) {
                this.timeoutSamples = (SpeechService.this.sampleRate * i10) / 1000;
            } else {
                this.timeoutSamples = -1;
            }
            this.remainingSamples = this.timeoutSamples;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(IOException iOException) {
            this.listener.onError(iOException);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(String str) {
            this.listener.onResult(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$2(String str) {
            this.listener.onPartialResult(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$3() {
            this.listener.onTimeout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$4(String str) {
            this.listener.onFinalResult(str);
        }

        public void reset() {
            this.reset = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SpeechService.this.recorder.startRecording();
            if (SpeechService.this.recorder.getRecordingState() == 1) {
                SpeechService.this.recorder.stop();
                SpeechService.this.mainHandler.post(new RunnableC2940a(0, this, new IOException("Failed to start recording. Microphone might be already in use.")));
            }
            int i10 = SpeechService.this.bufferSize;
            short[] sArr = new short[i10];
            while (!Thread.interrupted() && (this.timeoutSamples == -1 || this.remainingSamples > 0)) {
                int i11 = SpeechService.this.recorder.read(sArr, 0, i10);
                if (!this.paused) {
                    if (this.reset) {
                        SpeechService.this.recognizer.reset();
                        this.reset = false;
                    }
                    if (i11 < 0) {
                        C0075b.m183h("error reading audio buffer");
                        return;
                    }
                    boolean zAcceptWaveForm = SpeechService.this.recognizer.acceptWaveForm(sArr, i11);
                    SpeechService speechService = SpeechService.this;
                    if (zAcceptWaveForm) {
                        final String result = speechService.recognizer.getResult();
                        final int i12 = 0;
                        SpeechService.this.mainHandler.post(new Runnable(this) { // from class: org.vosk.android.b

                            /* JADX INFO: renamed from: c */
                            public final /* synthetic */ SpeechService.RecognizerThread f8161c;

                            {
                                this.f8161c = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i12) {
                                    case 0:
                                        this.f8161c.lambda$run$1(result);
                                        break;
                                    case 1:
                                        this.f8161c.lambda$run$2(result);
                                        break;
                                    default:
                                        this.f8161c.lambda$run$4(result);
                                        break;
                                }
                            }
                        });
                    } else {
                        final String partialResult = speechService.recognizer.getPartialResult();
                        final int i13 = 1;
                        SpeechService.this.mainHandler.post(new Runnable(this) { // from class: org.vosk.android.b

                            /* JADX INFO: renamed from: c */
                            public final /* synthetic */ SpeechService.RecognizerThread f8161c;

                            {
                                this.f8161c = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i13) {
                                    case 0:
                                        this.f8161c.lambda$run$1(partialResult);
                                        break;
                                    case 1:
                                        this.f8161c.lambda$run$2(partialResult);
                                        break;
                                    default:
                                        this.f8161c.lambda$run$4(partialResult);
                                        break;
                                }
                            }
                        });
                    }
                    if (this.timeoutSamples != -1) {
                        this.remainingSamples -= i11;
                    }
                }
            }
            SpeechService.this.recorder.stop();
            if (this.paused) {
                return;
            }
            if (this.timeoutSamples != -1 && this.remainingSamples <= 0) {
                SpeechService.this.mainHandler.post(new RunnableC2942c(this, 0));
                return;
            }
            final String finalResult = SpeechService.this.recognizer.getFinalResult();
            final int i14 = 2;
            SpeechService.this.mainHandler.post(new Runnable(this) { // from class: org.vosk.android.b

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ SpeechService.RecognizerThread f8161c;

                {
                    this.f8161c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i14) {
                        case 0:
                            this.f8161c.lambda$run$1(finalResult);
                            break;
                        case 1:
                            this.f8161c.lambda$run$2(finalResult);
                            break;
                        default:
                            this.f8161c.lambda$run$4(finalResult);
                            break;
                    }
                }
            });
        }

        public void setPause(boolean z9) {
            this.paused = z9;
        }

        public RecognizerThread(SpeechService speechService, RecognitionListener recognitionListener) {
            this(recognitionListener, -1);
        }
    }
}
