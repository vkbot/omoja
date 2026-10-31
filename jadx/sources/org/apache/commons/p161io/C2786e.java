package org.apache.commons.p161io;

import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.commons.p161io.function.IOFunction;
import org.apache.commons.p161io.function.IOSupplier;

/* JADX INFO: renamed from: org.apache.commons.io.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2786e implements IOFunction, IOSupplier {
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m4351a(Object obj, String str) throws FileNotFoundException {
        throw new FileNotFoundException(str + obj);
    }

    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m4352b(Object obj, String str, Object obj2) throws FileNotFoundException {
        throw new FileNotFoundException(str + obj + obj2);
    }

    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m4353e(String str, long j10, long j11) throws EOFException {
        throw new EOFException(str + j10 + ((Object) " actual: ") + j11);
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ void m4354f(Object obj, String str) throws IOException {
        throw new IOException(str + obj);
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        return Long.valueOf(FileUtils.lastModified((File) obj));
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public Object get() {
        return IOUtils.lambda$toString$0();
    }
}
