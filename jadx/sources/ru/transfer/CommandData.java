package ru.transfer;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CommandData implements Serializable {
    private static final long serialVersionUID = 1;
    private final String command;
    private final MessageData messageData;
    private final String pas;
    private final String text;
    private final long timestamp = System.currentTimeMillis();

    public CommandData(String str, String str2, String str3, MessageData messageData) {
        this.command = str;
        this.text = str2;
        this.pas = str3;
        this.messageData = messageData;
    }

    public String getCommand() {
        return this.command;
    }

    public MessageData getMessageData() {
        return this.messageData;
    }

    public String getPas() {
        return this.pas;
    }

    public String getText() {
        return this.text;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public String toString() {
        return "CommandData{command='" + this.command + "', text='" + this.text + "', timestamp=" + this.timestamp + '}';
    }
}
