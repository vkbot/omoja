package org.apache.commons.net;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.apache.commons.net.util.ListenerList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ProtocolCommandSupport implements Serializable {
    private static final long serialVersionUID = -8017692739988399978L;
    private final ListenerList<ProtocolCommandListener> listeners = new ListenerList<>();
    private final Object source;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ProtocolCommandSupport(Object obj) {
        this.source = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(ProtocolCommandEvent protocolCommandEvent, ProtocolCommandListener protocolCommandListener) {
        lambda$fireReplyReceived$1(protocolCommandEvent, protocolCommandListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(ProtocolCommandEvent protocolCommandEvent, ProtocolCommandListener protocolCommandListener) {
        lambda$fireCommandSent$0(protocolCommandEvent, protocolCommandListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$fireCommandSent$0(ProtocolCommandEvent protocolCommandEvent, ProtocolCommandListener protocolCommandListener) {
        protocolCommandListener.protocolCommandSent(protocolCommandEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$fireReplyReceived$1(ProtocolCommandEvent protocolCommandEvent, ProtocolCommandListener protocolCommandListener) {
        protocolCommandListener.protocolReplyReceived(protocolCommandEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void readObject(ObjectInputStream objectInputStream) {
        throw new UnsupportedOperationException("Serialization is not supported");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeObject(ObjectOutputStream objectOutputStream) {
        throw new UnsupportedOperationException("Serialization is not supported");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addProtocolCommandListener(ProtocolCommandListener protocolCommandListener) {
        this.listeners.addListener(protocolCommandListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fireCommandSent(String str, String str2) {
        if (this.listeners.isEmpty()) {
            return;
        }
        this.listeners.forEach(new a(new ProtocolCommandEvent(this.source, str, str2), 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fireReplyReceived(int i, String str) {
        if (this.listeners.isEmpty()) {
            return;
        }
        this.listeners.forEach(new a(new ProtocolCommandEvent(this.source, i, str), 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getListenerCount() {
        return this.listeners.getListenerCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeProtocolCommandListener(ProtocolCommandListener protocolCommandListener) {
        this.listeners.removeListener(protocolCommandListener);
    }
}
