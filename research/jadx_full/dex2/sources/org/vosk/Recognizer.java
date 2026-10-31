package org.vosk;

import com.sun.jna.PointerType;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class Recognizer extends PointerType implements AutoCloseable {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Recognizer(Model model, float f, SpeakerModel speakerModel) {
        super(LibVosk.vosk_recognizer_new_spk(model.getPointer(), f, speakerModel.getPointer()));
        if (getPointer() != null) {
            return;
        }
        b.A("Failed to create a recognizer");
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean acceptWaveForm(byte[] bArr, int i) {
        return LibVosk.vosk_recognizer_accept_waveform(getPointer(), bArr, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        LibVosk.vosk_recognizer_free(getPointer());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getFinalResult() {
        return LibVosk.vosk_recognizer_final_result(getPointer());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getPartialResult() {
        return LibVosk.vosk_recognizer_partial_result(getPointer());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getResult() {
        return LibVosk.vosk_recognizer_result(getPointer());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        LibVosk.vosk_recognizer_reset(getPointer());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGrammar(String str) {
        LibVosk.vosk_recognizer_set_grm(getPointer(), str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxAlternatives(int i) {
        LibVosk.vosk_recognizer_set_max_alternatives(getPointer(), i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPartialWords(boolean z) {
        LibVosk.vosk_recognizer_set_partial_words(getPointer(), z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpeakerModel(SpeakerModel speakerModel) {
        LibVosk.vosk_recognizer_set_spk_model(getPointer(), speakerModel.getPointer());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWords(boolean z) {
        LibVosk.vosk_recognizer_set_words(getPointer(), z);
    }

    public boolean acceptWaveForm(short[] sArr, int i) {
        return LibVosk.vosk_recognizer_accept_waveform_s(getPointer(), sArr, i);
    }

    public boolean acceptWaveForm(float[] fArr, int i) {
        return LibVosk.vosk_recognizer_accept_waveform_f(getPointer(), fArr, i);
    }

    public Recognizer(Model model, float f) {
        super(LibVosk.vosk_recognizer_new(model, f));
        if (getPointer() != null) {
            return;
        }
        b.A("Failed to create a recognizer");
        throw null;
    }

    public Recognizer(Model model, float f, String str) {
        super(LibVosk.vosk_recognizer_new_grm(model.getPointer(), f, str));
        if (getPointer() != null) {
            return;
        }
        b.A("Failed to create a recognizer");
        throw null;
    }
}
