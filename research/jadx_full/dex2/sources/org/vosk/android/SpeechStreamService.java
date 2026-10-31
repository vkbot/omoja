package org.vosk.android;

import android.os.Handler;
import android.os.Looper;
import java.io.InputStream;
import org.vosk.Recognizer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class SpeechStreamService {
    private static final float BUFFER_SIZE_SECONDS = 0.2f;
    private final int bufferSize;
    private final InputStream inputStream;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Recognizer recognizer;
    private Thread recognizerThread;
    private final int sampleRate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpeechStreamService(Recognizer recognizer, InputStream inputStream, float f) {
        this.recognizer = recognizer;
        int i = (int) f;
        this.sampleRate = i;
        this.inputStream = inputStream;
        this.bufferSize = Math.round(i * BUFFER_SIZE_SECONDS * 2.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$000(SpeechStreamService speechStreamService) {
        return speechStreamService.sampleRate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$100(SpeechStreamService speechStreamService) {
        return speechStreamService.bufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ InputStream access$200(SpeechStreamService speechStreamService) {
        return speechStreamService.inputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Recognizer access$300(SpeechStreamService speechStreamService) {
        return speechStreamService.recognizer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Handler access$400(SpeechStreamService speechStreamService) {
        return speechStreamService.mainHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean start(RecognitionListener recognitionListener) {
        if (this.recognizerThread != null) {
            return false;
        }
        SpeechStreamService$RecognizerThread speechStreamService$RecognizerThread = new SpeechStreamService$RecognizerThread(this, recognitionListener);
        this.recognizerThread = speechStreamService$RecognizerThread;
        speechStreamService$RecognizerThread.start();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    public boolean start(RecognitionListener recognitionListener, int i) {
        if (this.recognizerThread != null) {
            return false;
        }
        SpeechStreamService$RecognizerThread speechStreamService$RecognizerThread = new SpeechStreamService$RecognizerThread(this, recognitionListener, i);
        this.recognizerThread = speechStreamService$RecognizerThread;
        speechStreamService$RecognizerThread.start();
        return true;
    }
}
