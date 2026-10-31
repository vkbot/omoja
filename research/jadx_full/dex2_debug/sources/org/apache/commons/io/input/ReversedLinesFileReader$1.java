package org.apache.commons.io.input;

import java.util.Iterator;
import org.apache.commons.io.function.IOIterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ReversedLinesFileReader$1 implements IOIterator<String> {
    private String next;
    final /* synthetic */ ReversedLinesFileReader this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ReversedLinesFileReader$1(ReversedLinesFileReader reversedLinesFileReader) {
        this.this$0 = reversedLinesFileReader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIterator
    public boolean hasNext() {
        if (this.next == null) {
            this.next = this.this$0.readLine();
        }
        return this.next != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIterator
    /* JADX INFO: renamed from: next, reason: avoid collision after fix types in other method */
    public String next2() {
        if (this.next == null) {
            this.next = this.this$0.readLine();
        }
        String str = this.next;
        this.next = null;
        return str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIterator
    public Iterator<String> unwrap() {
        return null;
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // org.apache.commons.io.function.IOIterator
    public /* bridge */ /* synthetic */ String next() {
        return next2();
    }
}
