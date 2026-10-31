package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Utf8$UnpairedSurrogateException extends IllegalArgumentException {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Utf8$UnpairedSurrogateException(int i9, int i10) {
        super(ai.onnxruntime.a.g(i9, "Unpaired surrogate at index ", " of ", i10));
    }
}
