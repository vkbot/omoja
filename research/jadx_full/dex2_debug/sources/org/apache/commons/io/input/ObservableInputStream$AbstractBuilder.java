package org.apache.commons.io.input;

import java.util.List;
import org.apache.commons.io.build.AbstractStreamBuilder;
import org.apache.commons.io.function.IOIntConsumer;
import org.apache.commons.io.input.ObservableInputStream$AbstractBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class ObservableInputStream$AbstractBuilder<T extends ObservableInputStream$AbstractBuilder<T>> extends ProxyInputStream$AbstractBuilder<ObservableInputStream, T> {
    private List<ObservableInputStream$Observer> observers;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ List access$000(ObservableInputStream$AbstractBuilder observableInputStream$AbstractBuilder) {
        return observableInputStream$AbstractBuilder.observers;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ IOIntConsumer getAfterRead() {
        return super.getAfterRead();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream$AbstractBuilder
    public /* bridge */ /* synthetic */ AbstractStreamBuilder setAfterRead(IOIntConsumer iOIntConsumer) {
        return super.setAfterRead(iOIntConsumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setObservers(List<ObservableInputStream$Observer> list) {
        this.observers = list;
    }
}
