package org.vosk.android;

import android.os.Handler;
import android.os.Looper;
import java.io.IOException;
import java.io.InputStream;
import org.vosk.Recognizer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SpeechStreamService {
    private static final float BUFFER_SIZE_SECONDS = 0.2f;
    private final int bufferSize;
    private final InputStream inputStream;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Recognizer recognizer;
    private Thread recognizerThread;
    private final int sampleRate;

    public SpeechStreamService(Recognizer recognizer, InputStream inputStream, float f8) {
        this.recognizer = recognizer;
        int i10 = (int) f8;
        this.sampleRate = i10;
        this.inputStream = inputStream;
        this.bufferSize = Math.round(i10 * 0.2f * 2.0f);
    }

    public boolean start(RecognitionListener recognitionListener) {
        if (this.recognizerThread != null) {
            return false;
        }
        RecognizerThread recognizerThread = new RecognizerThread(this, recognitionListener);
        this.recognizerThread = recognizerThread;
        recognizerThread.start();
        return true;
    }

    public boolean stop() {
        Thread thread = this.recognizerThread;
        if (thread == null) {
            return false;
        }
        try {
            thread.interrupt();
            this.recognizerThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
        this.recognizerThread = null;
        return true;
    }

    public boolean start(RecognitionListener recognitionListener, int i10) {
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
        private int remainingSamples;
        private final int timeoutSamples;

        public RecognizerThread(RecognitionListener recognitionListener, int i10) {
            this.listener = recognitionListener;
            if (i10 != -1) {
                this.timeoutSamples = (SpeechStreamService.this.sampleRate * i10) / 1000;
            } else {
                this.timeoutSamples = -1;
            }
            this.remainingSamples = this.timeoutSamples;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(String str) {
            this.listener.onResult(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(String str) {
            this.listener.onPartialResult(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$2(IOException iOException) {
            this.listener.onError(iOException);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$3() {
            this.listener.onTimeout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$4(String str) {
            this.listener.onFinalResult(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i10 = SpeechStreamService.this.bufferSize;
            byte[] bArr = new byte[i10];
            while (!Thread.interrupted() && (this.timeoutSamples == -1 || this.remainingSamples > 0)) {
                try {
                    int i11 = SpeechStreamService.this.inputStream.read(bArr, 0, i10);
                    if (i11 < 0) {
                        break;
                    }
                    boolean zAcceptWaveForm = SpeechStreamService.this.recognizer.acceptWaveForm(bArr, i11);
                    SpeechStreamService speechStreamService = SpeechStreamService.this;
                    if (zAcceptWaveForm) {
                        final String result = speechStreamService.recognizer.getResult();
                        final int i12 = 0;
                        SpeechStreamService.this.mainHandler.post(new Runnable(this) { // from class: org.vosk.android.d

                            /* JADX INFO: renamed from: c */
                            public final /* synthetic */ SpeechStreamService.RecognizerThread f8166c;

                            {
                                this.f8166c = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i12) {
                                    case 0:
                                        this.f8166c.lambda$run$0(result);
                                        break;
                                    case 1:
                                        this.f8166c.lambda$run$1(result);
                                        break;
                                    default:
                                        this.f8166c.lambda$run$4(result);
                                        break;
                                }
                            }
                        });
                    } else {
                        final String partialResult = speechStreamService.recognizer.getPartialResult();
                        final int i13 = 1;
                        SpeechStreamService.this.mainHandler.post(new Runnable(this) { // from class: org.vosk.android.d

                            /* JADX INFO: renamed from: c */
                            public final /* synthetic */ SpeechStreamService.RecognizerThread f8166c;

                            {
                                this.f8166c = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                switch (i13) {
                                    case 0:
                                        this.f8166c.lambda$run$0(partialResult);
                                        break;
                                    case 1:
                                        this.f8166c.lambda$run$1(partialResult);
                                        break;
                                    default:
                                        this.f8166c.lambda$run$4(partialResult);
                                        break;
                                }
                            }
                        });
                    }
                    if (this.timeoutSamples != -1) {
                        this.remainingSamples -= i11;
                    }
                } catch (IOException e) {
                    SpeechStreamService.this.mainHandler.post(new RunnableC2940a(1, this, e));
                }
            }
            if (this.timeoutSamples != -1 && this.remainingSamples <= 0) {
                SpeechStreamService.this.mainHandler.post(new RunnableC2942c(this, 1));
                return;
            }
            final String finalResult = SpeechStreamService.this.recognizer.getFinalResult();
            final int i14 = 2;
            SpeechStreamService.this.mainHandler.post(new Runnable(this) { // from class: org.vosk.android.d

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ SpeechStreamService.RecognizerThread f8166c;

                {
                    this.f8166c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i14) {
                        case 0:
                            this.f8166c.lambda$run$0(finalResult);
                            break;
                        case 1:
                            this.f8166c.lambda$run$1(finalResult);
                            break;
                        default:
                            this.f8166c.lambda$run$4(finalResult);
                            break;
                    }
                }
            });
        }

        public RecognizerThread(SpeechStreamService speechStreamService, RecognitionListener recognitionListener) {
            this(recognitionListener, -1);
        }
    }
}
