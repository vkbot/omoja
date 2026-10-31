package org.apache.commons.io;

import java.util.function.IntUnaryOperator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class b implements IntUnaryOperator {
    public final /* synthetic */ FileSystem a;
    public final /* synthetic */ char b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(FileSystem fileSystem, char c) {
        this.a = fileSystem;
        this.b = c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.IntUnaryOperator
    public final int applyAsInt(int i) {
        return FileSystem.a(this.a, this.b, i);
    }
}
