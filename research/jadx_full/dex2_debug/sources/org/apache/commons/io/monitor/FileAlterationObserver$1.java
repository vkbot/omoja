package org.apache.commons.io.monitor;

import org.apache.commons.io.IOCase;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public /* synthetic */ class FileAlterationObserver$1 {
    static final /* synthetic */ int[] $SwitchMap$org$apache$commons$io$IOCase;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int[] iArr = new int[IOCase.values().length];
        $SwitchMap$org$apache$commons$io$IOCase = iArr;
        try {
            iArr[IOCase.SYSTEM.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$org$apache$commons$io$IOCase[IOCase.INSENSITIVE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
