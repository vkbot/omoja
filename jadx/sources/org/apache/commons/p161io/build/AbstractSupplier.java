package org.apache.commons.p161io.build;

import org.apache.commons.p161io.build.AbstractSupplier;
import org.apache.commons.p161io.function.IOSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractSupplier<T, B extends AbstractSupplier<T, B>> implements IOSupplier<T> {
    public B asThis() {
        return this;
    }
}
