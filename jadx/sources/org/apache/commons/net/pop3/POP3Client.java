package org.apache.commons.net.pop3;

import ai.onnxruntime.AbstractC0074a;
import java.io.Reader;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.ListIterator;
import java.util.StringTokenizer;
import kotlin.UByte;
import org.apache.commons.net.p162io.DotTerminatedMessageReader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class POP3Client extends POP3 {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ POP3MessageInfo lambda$listMessages$0(ListIterator listIterator, int i10) {
        return parseStatus((String) listIterator.next());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ POP3MessageInfo lambda$listUniqueIdentifiers$1(ListIterator listIterator, int i10) {
        return parseUID((String) listIterator.next());
    }

    private static POP3MessageInfo parseStatus(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        if (!stringTokenizer.hasMoreElements()) {
            return null;
        }
        try {
            int i10 = Integer.parseInt(stringTokenizer.nextToken());
            if (stringTokenizer.hasMoreElements()) {
                return new POP3MessageInfo(i10, Integer.parseInt(stringTokenizer.nextToken()));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private static POP3MessageInfo parseUID(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        if (!stringTokenizer.hasMoreElements()) {
            return null;
        }
        try {
            int i10 = Integer.parseInt(stringTokenizer.nextToken());
            if (stringTokenizer.hasMoreElements()) {
                return new POP3MessageInfo(i10, stringTokenizer.nextToken());
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public boolean capa() {
        if (sendCommand(12) != 0) {
            return false;
        }
        getAdditionalReply();
        return true;
    }

    public boolean deleteMessage(int i10) {
        return getState() == 1 && sendCommand(6, Integer.toString(i10)) == 0;
    }

    public POP3MessageInfo listMessage(int i10) {
        if (getState() == 1 && sendCommand(4, Integer.toString(i10)) == 0) {
            return parseStatus(this.lastReplyLine.substring(3));
        }
        return null;
    }

    public POP3MessageInfo[] listMessages() {
        if (getState() != 1 || sendCommand(4) != 0) {
            return null;
        }
        getAdditionalReply();
        POP3MessageInfo[] pOP3MessageInfoArr = new POP3MessageInfo[this.replyLines.size() - 2];
        Arrays.setAll(pOP3MessageInfoArr, new C2934a(this.replyLines.listIterator(1), 1));
        return pOP3MessageInfoArr;
    }

    public POP3MessageInfo listUniqueIdentifier(int i10) {
        if (getState() == 1 && sendCommand(11, Integer.toString(i10)) == 0) {
            return parseUID(this.lastReplyLine.substring(3));
        }
        return null;
    }

    public POP3MessageInfo[] listUniqueIdentifiers() {
        if (getState() != 1 || sendCommand(11) != 0) {
            return null;
        }
        getAdditionalReply();
        POP3MessageInfo[] pOP3MessageInfoArr = new POP3MessageInfo[this.replyLines.size() - 2];
        Arrays.setAll(pOP3MessageInfoArr, new C2934a(this.replyLines.listIterator(1), 0));
        return pOP3MessageInfoArr;
    }

    public boolean login(String str, String str2, String str3) {
        if (getState() != 0) {
            return false;
        }
        byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(AbstractC0074a.m148C(str2, str3).getBytes(getCharset()));
        StringBuilder sb = new StringBuilder(128);
        for (byte b10 : bArrDigest) {
            int i10 = b10 & UByte.MAX_VALUE;
            if (i10 <= 15) {
                sb.append("0");
            }
            sb.append(Integer.toHexString(i10));
        }
        StringBuilder sb2 = new StringBuilder(256);
        sb2.append(str);
        sb2.append(' ');
        sb2.append(sb.toString());
        if (sendCommand(9, sb2.toString()) != 0) {
            return false;
        }
        setState(1);
        return true;
    }

    public boolean logout() {
        if (getState() == 1) {
            setState(2);
        }
        sendCommand(2);
        return this.replyCode == 0;
    }

    public boolean noop() {
        return getState() == 1 && sendCommand(7) == 0;
    }

    public boolean reset() {
        return getState() == 1 && sendCommand(8) == 0;
    }

    public Reader retrieveMessage(int i10) {
        if (getState() == 1 && sendCommand(5, Integer.toString(i10)) == 0) {
            return new DotTerminatedMessageReader(this.reader);
        }
        return null;
    }

    public Reader retrieveMessageTop(int i10, int i11) {
        if (i11 < 0 || getState() != 1) {
            return null;
        }
        if (sendCommand(10, Integer.toString(i10) + " " + Integer.toString(i11)) != 0) {
            return null;
        }
        return new DotTerminatedMessageReader(this.reader);
    }

    public POP3MessageInfo status() {
        if (getState() == 1 && sendCommand(3) == 0) {
            return parseStatus(this.lastReplyLine.substring(3));
        }
        return null;
    }

    public boolean login(String str, String str2) {
        if (getState() != 0 || sendCommand(0, str) != 0 || sendCommand(1, str2) != 0) {
            return false;
        }
        setState(1);
        return true;
    }
}
