package org.apache.commons.net;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.apache.commons.net.util.ListenerList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ProtocolCommandSupport implements Serializable {
    private static final long serialVersionUID = -8017692739988399978L;
    private final ListenerList<ProtocolCommandListener> listeners = new ListenerList<>();
    private final Object source;

    public ProtocolCommandSupport(Object obj) {
        this.source = obj;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new UnsupportedOperationException("Serialization is not supported");
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        throw new UnsupportedOperationException("Serialization is not supported");
    }

    public void addProtocolCommandListener(ProtocolCommandListener protocolCommandListener) {
        this.listeners.addListener(protocolCommandListener);
    }

    public void fireCommandSent(String str, String str2) {
        if (this.listeners.isEmpty()) {
            return;
        }
        this.listeners.forEach(new C2929a(new ProtocolCommandEvent(this.source, str, str2), 1));
    }

    public void fireReplyReceived(int i10, String str) {
        if (this.listeners.isEmpty()) {
            return;
        }
        this.listeners.forEach(new C2929a(new ProtocolCommandEvent(this.source, i10, str), 0));
    }

    public int getListenerCount() {
        return this.listeners.getListenerCount();
    }

    public void removeProtocolCommandListener(ProtocolCommandListener protocolCommandListener) {
        this.listeners.removeListener(protocolCommandListener);
    }
}
