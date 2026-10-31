package org.apache.commons.p161io.input;

import java.io.Reader;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntPredicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CharacterSetFilterReader extends AbstractCharacterFilterReader {
    public CharacterSetFilterReader(Reader reader, Integer... numArr) {
        this(reader, new HashSet(Arrays.asList(numArr)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$toIntPredicate$0(Set set, int i10) {
        return set.contains(Integer.valueOf(i10));
    }

    private static IntPredicate toIntPredicate(Set<Integer> set) {
        if (set == null) {
            return AbstractCharacterFilterReader.SKIP_NONE;
        }
        final Set setUnmodifiableSet = Collections.unmodifiableSet(set);
        return new IntPredicate() { // from class: org.apache.commons.io.input.f
            @Override // java.util.function.IntPredicate
            public final boolean test(int i10) {
                return CharacterSetFilterReader.lambda$toIntPredicate$0(setUnmodifiableSet, i10);
            }
        };
    }

    public CharacterSetFilterReader(Reader reader, Set<Integer> set) {
        super(reader, toIntPredicate(set));
    }
}
