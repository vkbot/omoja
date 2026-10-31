package org.apache.commons.net;

import java.util.EventObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ProtocolCommandEvent extends EventObject {
    private static final long serialVersionUID = 403743538418947240L;
    private final String command;
    private final boolean isCommand;
    private final String message;
    private final int replyCode;

    public ProtocolCommandEvent(Object obj, int i10, String str) {
        super(obj);
        this.replyCode = i10;
        this.message = str;
        this.isCommand = false;
        this.command = null;
    }

    public String getCommand() {
        return this.command;
    }

    public String getMessage() {
        return this.message;
    }

    public int getReplyCode() {
        return this.replyCode;
    }

    public boolean isCommand() {
        return this.isCommand;
    }

    public boolean isReply() {
        return !isCommand();
    }

    public ProtocolCommandEvent(Object obj, String str, String str2) {
        super(obj);
        this.replyCode = 0;
        this.message = str2;
        this.isCommand = true;
        this.command = str;
    }
}
