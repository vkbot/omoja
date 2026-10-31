package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.State$Chain;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public /* synthetic */ class HorizontalChainReference$1 {
    static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$state$State$Chain;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int[] iArr = new int[State$Chain.values().length];
        $SwitchMap$androidx$constraintlayout$core$state$State$Chain = iArr;
        try {
            iArr[State$Chain.SPREAD.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$androidx$constraintlayout$core$state$State$Chain[State$Chain.SPREAD_INSIDE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$androidx$constraintlayout$core$state$State$Chain[State$Chain.PACKED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
