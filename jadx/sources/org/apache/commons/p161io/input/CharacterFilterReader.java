package org.apache.commons.p161io.input;

import java.io.Reader;
import java.util.function.IntPredicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CharacterFilterReader extends AbstractCharacterFilterReader {
    public CharacterFilterReader(Reader reader, final int i10) {
        super(reader, new IntPredicate() { // from class: org.apache.commons.io.input.e
            @Override // java.util.function.IntPredicate
            public final boolean test(int i11) {
                return CharacterFilterReader.lambda$new$0(i10, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$new$0(int i10, int i11) {
        return i11 == i10;
    }

    public CharacterFilterReader(Reader reader, IntPredicate intPredicate) {
        super(reader, intPredicate);
    }
}
