package org.apache.commons.net.util;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.EventListener;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ListenerList<T extends EventListener> implements Serializable, Iterable<T> {
    private static final long serialVersionUID = -1934227607974228213L;
    private final CopyOnWriteArrayList<T> listeners = new CopyOnWriteArrayList<>();

    private void readObject(ObjectInputStream objectInputStream) {
        throw new UnsupportedOperationException("Serialization is not supported");
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        throw new UnsupportedOperationException("Serialization is not supported");
    }

    public void addListener(T t) {
        if (t != null) {
            this.listeners.add(t);
        }
    }

    public int getListenerCount() {
        return this.listeners.size();
    }

    public boolean isEmpty() {
        return getListenerCount() == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this.listeners.iterator();
    }

    public void removeListener(T t) {
        if (t != null) {
            this.listeners.remove(t);
        }
    }
}
