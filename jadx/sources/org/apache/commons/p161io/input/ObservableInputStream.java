package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.IOConsumer;
import org.apache.commons.p161io.function.IOIntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ObservableInputStream extends ProxyInputStream {
    private final List<Observer> observers;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static abstract class AbstractBuilder<T extends AbstractBuilder<T>> extends ProxyInputStream.AbstractBuilder<ObservableInputStream, T> {
        private List<Observer> observers;

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ IOIntConsumer getAfterRead() {
            return super.getAfterRead();
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractStreamBuilder setAfterRead(IOIntConsumer iOIntConsumer) {
            return super.setAfterRead(iOIntConsumer);
        }

        public void setObservers(List<Observer> list) {
            this.observers = list;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractBuilder<Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public ObservableInputStream get() {
            return new ObservableInputStream(this);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static abstract class Observer {
        public void data(byte[] bArr, int i10, int i11) {
        }

        public void closed() {
        }

        public void finished() {
        }

        public void data(int i10) {
        }

        public void error(IOException iOException) throws IOException {
            throw iOException;
        }
    }

    public ObservableInputStream(AbstractBuilder<?> abstractBuilder) {
        super(abstractBuilder);
        this.observers = ((AbstractBuilder) abstractBuilder).observers;
    }

    private void forEachObserver(IOConsumer<Observer> iOConsumer) {
        IOConsumer.forAll(iOConsumer, this.observers);
    }

    private void notify(byte[] bArr, int i10, int i11, IOException iOException) throws IOException {
        if (iOException != null) {
            noteError(iOException);
            throw iOException;
        }
        if (i11 == -1) {
            noteFinished();
        } else if (i11 > 0) {
            noteDataBytes(bArr, i10, i11);
        }
    }

    public void add(Observer observer) {
        this.observers.add(observer);
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            super.close();
            e = null;
        } catch (IOException e) {
            e = e;
        }
        if (e == null) {
            noteClosed();
        } else {
            noteError(e);
        }
    }

    public void consume() {
        IOUtils.consume(this);
    }

    public List<Observer> getObservers() {
        return new ArrayList(this.observers);
    }

    public void noteClosed() {
        forEachObserver(new C2878h(1));
    }

    public void noteDataByte(int i10) {
        forEachObserver(new C2877g(i10, 0));
    }

    public void noteDataBytes(byte[] bArr, int i10, int i11) {
        forEachObserver(new C2879i(bArr, i10, i11, 0));
    }

    public void noteError(IOException iOException) {
        forEachObserver(new C2880j(0, iOException));
    }

    public void noteFinished() {
        forEachObserver(new C2878h(0));
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i10;
        try {
            i10 = super.read();
            e = null;
        } catch (IOException e) {
            e = e;
            i10 = 0;
        }
        if (e != null) {
            noteError(e);
            throw e;
        }
        if (i10 == -1) {
            noteFinished();
        } else {
            noteDataByte(i10);
        }
        return i10;
    }

    public void remove(Observer observer) {
        this.observers.remove(observer);
    }

    public void removeAllObservers() {
        this.observers.clear();
    }

    public ObservableInputStream(InputStream inputStream) {
        this(inputStream, new ArrayList());
    }

    private ObservableInputStream(InputStream inputStream, List<Observer> list) {
        super(inputStream);
        this.observers = list;
    }

    public ObservableInputStream(InputStream inputStream, Observer... observerArr) {
        this(inputStream, (List<Observer>) Arrays.asList(observerArr));
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i10;
        try {
            i10 = super.read(bArr);
            e = null;
        } catch (IOException e) {
            e = e;
            i10 = 0;
        }
        notify(bArr, 0, i10, e);
        return i10;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        try {
            i12 = super.read(bArr, i10, i11);
            e = null;
        } catch (IOException e) {
            e = e;
            i12 = 0;
        }
        notify(bArr, i10, i12, e);
        return i12;
    }
}
