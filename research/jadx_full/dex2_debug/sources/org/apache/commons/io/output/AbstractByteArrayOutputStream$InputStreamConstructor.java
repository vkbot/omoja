package org.apache.commons.io.output;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface AbstractByteArrayOutputStream$InputStreamConstructor<T extends InputStream> {
    T construct(byte[] bArr, int i, int i2);
}
