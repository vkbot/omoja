package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.function.IOConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ObservableInputStream extends ProxyInputStream {
    private final List<ObservableInputStream$Observer> observers;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ObservableInputStream(ObservableInputStream$AbstractBuilder<?> observableInputStream$AbstractBuilder) {
        super(observableInputStream$AbstractBuilder);
        this.observers = ObservableInputStream$AbstractBuilder.access$000(observableInputStream$AbstractBuilder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(int i, ObservableInputStream$Observer observableInputStream$Observer) {
        lambda$noteDataByte$0(i, observableInputStream$Observer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(IOException iOException, ObservableInputStream$Observer observableInputStream$Observer) {
        lambda$noteError$2(iOException, observableInputStream$Observer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void forEachObserver(IOConsumer<ObservableInputStream$Observer> iOConsumer) {
        IOConsumer.forAll(iOConsumer, this.observers);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$noteDataByte$0(int i, ObservableInputStream$Observer observableInputStream$Observer) {
        observableInputStream$Observer.data(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$noteDataBytes$1(byte[] bArr, int i, int i2, ObservableInputStream$Observer observableInputStream$Observer) {
        observableInputStream$Observer.data(bArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$noteError$2(IOException iOException, ObservableInputStream$Observer observableInputStream$Observer) throws IOException {
        observableInputStream$Observer.error(iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void notify(byte[] bArr, int i, int i2, IOException iOException) throws IOException {
        if (iOException != null) {
            noteError(iOException);
            throw iOException;
        }
        if (i2 == -1) {
            noteFinished();
        } else if (i2 > 0) {
            noteDataBytes(bArr, i, i2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void y(byte[] bArr, int i, int i2, ObservableInputStream$Observer observableInputStream$Observer) {
        lambda$noteDataBytes$1(bArr, i, i2, observableInputStream$Observer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void add(ObservableInputStream$Observer observableInputStream$Observer) {
        this.observers.add(observableInputStream$Observer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void consume() {
        IOUtils.consume(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<ObservableInputStream$Observer> getObservers() {
        return new ArrayList(this.observers);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void noteClosed() {
        forEachObserver(new h(1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void noteDataByte(int i) {
        forEachObserver(new g(i, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void noteDataBytes(byte[] bArr, int i, int i2) {
        forEachObserver(new i(bArr, i, i2, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void noteError(IOException iOException) {
        forEachObserver(new j(0, iOException));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void noteFinished() {
        forEachObserver(new h(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i;
        try {
            i = super.read();
            e = null;
        } catch (IOException e) {
            e = e;
            i = 0;
        }
        if (e != null) {
            noteError(e);
            throw e;
        }
        if (i == -1) {
            noteFinished();
        } else {
            noteDataByte(i);
        }
        return i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void remove(ObservableInputStream$Observer observableInputStream$Observer) {
        this.observers.remove(observableInputStream$Observer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeAllObservers() {
        this.observers.clear();
    }

    public ObservableInputStream(InputStream inputStream) {
        this(inputStream, new ArrayList());
    }

    private ObservableInputStream(InputStream inputStream, List<ObservableInputStream$Observer> list) {
        super(inputStream);
        this.observers = list;
    }

    public ObservableInputStream(InputStream inputStream, ObservableInputStream$Observer... observableInputStream$ObserverArr) {
        this(inputStream, (List<ObservableInputStream$Observer>) Arrays.asList(observableInputStream$ObserverArr));
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i;
        try {
            i = super.read(bArr);
            e = null;
        } catch (IOException e) {
            e = e;
            i = 0;
        }
        notify(bArr, 0, i, e);
        return i;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        try {
            i3 = super.read(bArr, i, i2);
            e = null;
        } catch (IOException e) {
            e = e;
            i3 = 0;
        }
        notify(bArr, i, i3, e);
        return i3;
    }
}
