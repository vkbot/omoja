package androidx.constraintlayout.core.parser;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CLObject$CLObjectIterator implements Iterator<CLKey> {
    int mIndex = 0;
    CLObject mObject;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CLObject$CLObjectIterator(CLObject cLObject) {
        this.mObject = cLObject;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.mIndex < this.mObject.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public CLKey next() {
        CLKey cLKey = (CLKey) this.mObject.mElements.get(this.mIndex);
        this.mIndex++;
        return cLKey;
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ CLKey next() {
        return next();
    }
}
