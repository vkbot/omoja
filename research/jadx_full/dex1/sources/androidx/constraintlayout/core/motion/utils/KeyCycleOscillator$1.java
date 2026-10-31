package androidx.constraintlayout.core.motion.utils;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyCycleOscillator$1 implements Comparator<KeyCycleOscillator$WavePoint> {
    final /* synthetic */ KeyCycleOscillator this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyCycleOscillator$1(KeyCycleOscillator keyCycleOscillator) {
        this.this$0 = keyCycleOscillator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(KeyCycleOscillator$WavePoint keyCycleOscillator$WavePoint, KeyCycleOscillator$WavePoint keyCycleOscillator$WavePoint2) {
        return compare2(keyCycleOscillator$WavePoint, keyCycleOscillator$WavePoint2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(KeyCycleOscillator$WavePoint keyCycleOscillator$WavePoint, KeyCycleOscillator$WavePoint keyCycleOscillator$WavePoint2) {
        return Integer.compare(keyCycleOscillator$WavePoint.mPosition, keyCycleOscillator$WavePoint2.mPosition);
    }
}
