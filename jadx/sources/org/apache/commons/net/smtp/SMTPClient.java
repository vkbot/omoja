package org.apache.commons.net.smtp;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.net.p162io.DotTerminatedMessageWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SMTPClient extends SMTP {
    public SMTPClient() {
    }

    public boolean addRecipient(String str) {
        return SMTPReply.isPositiveCompletion(rcpt("<" + str + ">"));
    }

    public boolean completePendingCommand() {
        return SMTPReply.isPositiveCompletion(getReply());
    }

    public String listHelp() {
        if (SMTPReply.isPositiveCompletion(help())) {
            return getReplyString();
        }
        return null;
    }

    public boolean login() {
        String hostName = getLocalAddress().getHostName();
        if (hostName == null) {
            return false;
        }
        return SMTPReply.isPositiveCompletion(helo(hostName));
    }

    public boolean logout() {
        return SMTPReply.isPositiveCompletion(quit());
    }

    public boolean reset() {
        return SMTPReply.isPositiveCompletion(rset());
    }

    public Writer sendMessageData() {
        if (SMTPReply.isPositiveIntermediate(data())) {
            return new DotTerminatedMessageWriter(this.writer);
        }
        return null;
    }

    public boolean sendNoOp() {
        return SMTPReply.isPositiveCompletion(noop());
    }

    public boolean sendShortMessageData(String str) throws IOException {
        Writer writerSendMessageData = sendMessageData();
        if (writerSendMessageData == null) {
            if (writerSendMessageData != null) {
                writerSendMessageData.close();
            }
            return false;
        }
        try {
            writerSendMessageData.write(str);
            writerSendMessageData.close();
            return completePendingCommand();
        } catch (Throwable th) {
            try {
                writerSendMessageData.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public boolean sendSimpleMessage(String str, String[] strArr, String str2) {
        if (!setSender(str)) {
            return false;
        }
        boolean z9 = false;
        for (String str3 : strArr) {
            if (addRecipient(str3)) {
                z9 = true;
            }
        }
        if (z9) {
            return sendShortMessageData(str2);
        }
        return false;
    }

    public boolean setSender(String str) {
        return SMTPReply.isPositiveCompletion(mail("<" + str + ">"));
    }

    public boolean verify(String str) {
        int iVrfy = vrfy(str);
        return iVrfy == 250 || iVrfy == 251;
    }

    public SMTPClient(String str) {
        super(str);
    }

    public String listHelp(String str) {
        if (SMTPReply.isPositiveCompletion(help(str))) {
            return getReplyString();
        }
        return null;
    }

    public boolean login(String str) {
        return SMTPReply.isPositiveCompletion(helo(str));
    }

    public boolean addRecipient(RelayPath relayPath) {
        return SMTPReply.isPositiveCompletion(rcpt(relayPath.toString()));
    }

    public boolean setSender(RelayPath relayPath) {
        return SMTPReply.isPositiveCompletion(mail(relayPath.toString()));
    }

    public boolean sendSimpleMessage(String str, String str2, String str3) {
        if (setSender(str) && addRecipient(str2)) {
            return sendShortMessageData(str3);
        }
        return false;
    }
}
