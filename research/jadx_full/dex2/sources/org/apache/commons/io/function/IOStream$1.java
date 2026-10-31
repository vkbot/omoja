package org.apache.commons.io.function;

import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class IOStream$1<T> implements Iterator<T> {
    T t = (T) IOStreams.NONE;
    final /* synthetic */ IOUnaryOperator val$f;
    final /* synthetic */ Object val$seed;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public IOStream$1(Object obj, IOUnaryOperator iOUnaryOperator) {
        this.val$seed = obj;
        this.val$f = iOUnaryOperator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public T next() {
        try {
            T t = this.t;
            T tApply = t == IOStreams.NONE ? (T) this.val$seed : this.val$f.apply(t);
            this.t = tApply;
            return tApply;
        } catch (IOException e) {
            NoSuchElementException noSuchElementException = new NoSuchElementException();
            noSuchElementException.initCause(e);
            throw noSuchElementException;
        }
    }
}
