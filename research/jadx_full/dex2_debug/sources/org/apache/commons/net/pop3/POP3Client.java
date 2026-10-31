package org.apache.commons.net.pop3;

import java.io.IOException;
import java.io.Reader;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.ListIterator;
import java.util.StringTokenizer;
import org.apache.commons.net.io.DotTerminatedMessageReader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class POP3Client extends POP3 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ POP3MessageInfo a(ListIterator listIterator, int i) {
        return lambda$listUniqueIdentifiers$1(listIterator, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ POP3MessageInfo b(ListIterator listIterator, int i) {
        return lambda$listMessages$0(listIterator, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ POP3MessageInfo lambda$listMessages$0(ListIterator listIterator, int i) {
        return parseStatus((String) listIterator.next());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ POP3MessageInfo lambda$listUniqueIdentifiers$1(ListIterator listIterator, int i) {
        return parseUID((String) listIterator.next());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static POP3MessageInfo parseStatus(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        if (!stringTokenizer.hasMoreElements()) {
            return null;
        }
        try {
            int i = Integer.parseInt(stringTokenizer.nextToken());
            if (stringTokenizer.hasMoreElements()) {
                return new POP3MessageInfo(i, Integer.parseInt(stringTokenizer.nextToken()));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static POP3MessageInfo parseUID(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        if (!stringTokenizer.hasMoreElements()) {
            return null;
        }
        try {
            int i = Integer.parseInt(stringTokenizer.nextToken());
            if (stringTokenizer.hasMoreElements()) {
                return new POP3MessageInfo(i, stringTokenizer.nextToken());
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean capa() throws IOException {
        if (sendCommand(12) != 0) {
            return false;
        }
        getAdditionalReply();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean deleteMessage(int i) {
        return getState() == 1 && sendCommand(6, Integer.toString(i)) == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public POP3MessageInfo listMessage(int i) {
        if (getState() == 1 && sendCommand(4, Integer.toString(i)) == 0) {
            return parseStatus(this.lastReplyLine.substring(3));
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public POP3MessageInfo[] listMessages() throws IOException {
        if (getState() != 1 || sendCommand(4) != 0) {
            return null;
        }
        getAdditionalReply();
        POP3MessageInfo[] pOP3MessageInfoArr = new POP3MessageInfo[this.replyLines.size() - 2];
        Arrays.setAll(pOP3MessageInfoArr, new a(this.replyLines.listIterator(1), 1));
        return pOP3MessageInfoArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public POP3MessageInfo listUniqueIdentifier(int i) {
        if (getState() == 1 && sendCommand(11, Integer.toString(i)) == 0) {
            return parseUID(this.lastReplyLine.substring(3));
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public POP3MessageInfo[] listUniqueIdentifiers() throws IOException {
        if (getState() != 1 || sendCommand(11) != 0) {
            return null;
        }
        getAdditionalReply();
        POP3MessageInfo[] pOP3MessageInfoArr = new POP3MessageInfo[this.replyLines.size() - 2];
        Arrays.setAll(pOP3MessageInfoArr, new a(this.replyLines.listIterator(1), 0));
        return pOP3MessageInfoArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean login(String str, String str2, String str3) {
        if (getState() != 0) {
            return false;
        }
        byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(ai.onnxruntime.a.C(str2, str3).getBytes(getCharset()));
        StringBuilder sb = new StringBuilder(128);
        for (byte b : bArrDigest) {
            int i = b & 255;
            if (i <= 15) {
                sb.append("0");
            }
            sb.append(Integer.toHexString(i));
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean logout() {
        if (getState() == 1) {
            setState(2);
        }
        sendCommand(2);
        return this.replyCode == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean noop() {
        return getState() == 1 && sendCommand(7) == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean reset() {
        return getState() == 1 && sendCommand(8) == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Reader retrieveMessage(int i) {
        if (getState() == 1 && sendCommand(5, Integer.toString(i)) == 0) {
            return new DotTerminatedMessageReader(this.reader);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Reader retrieveMessageTop(int i, int i2) {
        if (i2 < 0 || getState() != 1) {
            return null;
        }
        if (sendCommand(10, Integer.toString(i) + " " + Integer.toString(i2)) != 0) {
            return null;
        }
        return new DotTerminatedMessageReader(this.reader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
