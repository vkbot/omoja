package org.vosk.android;

import android.media.AudioRecord;
import android.os.Handler;
import android.os.Looper;
import org.vosk.Recognizer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class SpeechService {
    private static final float BUFFER_SIZE_SECONDS = 0.2f;
    private final int bufferSize;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Recognizer recognizer;
    private SpeechService$RecognizerThread recognizerThread;
    private final AudioRecord recorder;
    private final int sampleRate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpeechService(Recognizer recognizer, float f) {
        this.recognizer = recognizer;
        int i = (int) f;
        this.sampleRate = i;
        int iRound = Math.round(i * BUFFER_SIZE_SECONDS);
        this.bufferSize = iRound;
        AudioRecord audioRecord = new AudioRecord(6, i, 16, 2, iRound * 2);
        this.recorder = audioRecord;
        if (audioRecord.getState() != 0) {
            return;
        }
        audioRecord.release();
        n0.b.A("Failed to initialize recorder. Microphone might be already in use.");
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$000(SpeechService speechService) {
        return speechService.sampleRate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ AudioRecord access$100(SpeechService speechService) {
        return speechService.recorder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Handler access$200(SpeechService speechService) {
        return speechService.mainHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$300(SpeechService speechService) {
        return speechService.bufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Recognizer access$400(SpeechService speechService) {
        return speechService.recognizer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean stopRecognizerThread() {
        SpeechService$RecognizerThread speechService$RecognizerThread = this.recognizerThread;
        if (speechService$RecognizerThread == null) {
            return false;
        }
        try {
            speechService$RecognizerThread.interrupt();
            this.recognizerThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
        this.recognizerThread = null;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean cancel() {
        SpeechService$RecognizerThread speechService$RecognizerThread = this.recognizerThread;
        if (speechService$RecognizerThread != null) {
            speechService$RecognizerThread.setPause(true);
        }
        return stopRecognizerThread();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        SpeechService$RecognizerThread speechService$RecognizerThread = this.recognizerThread;
        if (speechService$RecognizerThread != null) {
            speechService$RecognizerThread.reset();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPause(boolean z) {
        SpeechService$RecognizerThread speechService$RecognizerThread = this.recognizerThread;
        if (speechService$RecognizerThread != null) {
            speechService$RecognizerThread.setPause(z);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void shutdown() {
        this.recorder.release();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean startListening(RecognitionListener recognitionListener) {
        if (this.recognizerThread != null) {
            return false;
        }
        SpeechService$RecognizerThread speechService$RecognizerThread = new SpeechService$RecognizerThread(this, recognitionListener);
        this.recognizerThread = speechService$RecognizerThread;
        speechService$RecognizerThread.start();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean stop() {
        return stopRecognizerThread();
    }

    public boolean startListening(RecognitionListener recognitionListener, int i) {
        if (this.recognizerThread != null) {
            return false;
        }
        SpeechService$RecognizerThread speechService$RecognizerThread = new SpeechService$RecognizerThread(this, recognitionListener, i);
        this.recognizerThread = speechService$RecognizerThread;
        speechService$RecognizerThread.start();
        return true;
    }
}
