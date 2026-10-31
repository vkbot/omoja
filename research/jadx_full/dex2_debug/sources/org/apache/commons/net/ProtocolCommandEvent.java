package org.apache.commons.net;

import java.util.EventObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ProtocolCommandEvent extends EventObject {
    private static final long serialVersionUID = 403743538418947240L;
    private final String command;
    private final boolean isCommand;
    private final String message;
    private final int replyCode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ProtocolCommandEvent(Object obj, int i, String str) {
        super(obj);
        this.replyCode = i;
        this.message = str;
        this.isCommand = false;
        this.command = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getCommand() {
        return this.command;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getMessage() {
        return this.message;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getReplyCode() {
        return this.replyCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isCommand() {
        return this.isCommand;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
