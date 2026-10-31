package org.apache.commons.net.ntp;

import j1.i;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class TimeInfo {
    private List<String> comments;
    private Long delayMillis;
    private boolean detailsComputed;
    private final NtpV3Packet message;
    private Long offsetMillis;
    private final long returnTimeMillis;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TimeInfo(NtpV3Packet ntpV3Packet, long j, List<String> list, boolean z) {
        if (ntpV3Packet == null) {
            i.k("message cannot be null");
            throw null;
        }
        this.returnTimeMillis = j;
        this.message = ntpV3Packet;
        this.comments = list;
        if (z) {
            computeDetails();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addComment(String str) {
        if (this.comments == null) {
            this.comments = new ArrayList();
        }
        this.comments.add(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:36:0x00b2  */
    public void computeDetails() {
        if (this.detailsComputed) {
            return;
        }
        this.detailsComputed = true;
        if (this.comments == null) {
            this.comments = new ArrayList();
        }
        TimeStamp originateTimeStamp = this.message.getOriginateTimeStamp();
        long time = originateTimeStamp.getTime();
        TimeStamp receiveTimeStamp = this.message.getReceiveTimeStamp();
        long time2 = receiveTimeStamp.getTime();
        TimeStamp transmitTimeStamp = this.message.getTransmitTimeStamp();
        long time3 = transmitTimeStamp.getTime();
        long j = 0;
        if (originateTimeStamp.ntpValue() == 0) {
            if (transmitTimeStamp.ntpValue() == 0) {
                this.comments.add("Error: zero orig time -- cannot compute delay/offset");
                return;
            } else {
                this.offsetMillis = Long.valueOf(time3 - this.returnTimeMillis);
                this.comments.add("Error: zero orig time -- cannot compute delay");
                return;
            }
        }
        if (receiveTimeStamp.ntpValue() == 0 || transmitTimeStamp.ntpValue() == 0) {
            this.comments.add("Warning: zero rcvNtpTime or xmitNtpTime");
            long j2 = this.returnTimeMillis;
            if (time > j2) {
                this.comments.add("Error: OrigTime > DestRcvTime");
            } else {
                this.delayMillis = Long.valueOf(j2 - time);
            }
            if (receiveTimeStamp.ntpValue() != 0) {
                this.offsetMillis = Long.valueOf(time2 - time);
                return;
            } else {
                if (transmitTimeStamp.ntpValue() != 0) {
                    this.offsetMillis = Long.valueOf(time3 - this.returnTimeMillis);
                    return;
                }
                return;
            }
        }
        long j3 = this.returnTimeMillis - time;
        if (time3 >= time2) {
            long j4 = time3 - time2;
            if (j4 <= j3) {
                j = j3 - j4;
            } else if (j4 - j3 != 1) {
                this.comments.add("Warning: processing time > total network time");
            } else if (j3 != 0) {
                this.comments.add("Info: processing time > total network time by 1 ms -> assume zero delay");
            }
            this.delayMillis = Long.valueOf(j);
            if (time > this.returnTimeMillis) {
                this.comments.add("Error: OrigTime > DestRcvTime");
            }
            this.offsetMillis = Long.valueOf((((time2 - time) + time3) - this.returnTimeMillis) / 2);
        }
        this.comments.add("Error: xmitTime < rcvTime");
        j = j3;
        this.delayMillis = Long.valueOf(j);
        if (time > this.returnTimeMillis) {
            this.comments.add("Error: OrigTime > DestRcvTime");
        }
        this.offsetMillis = Long.valueOf((((time2 - time) + time3) - this.returnTimeMillis) / 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            TimeInfo timeInfo = (TimeInfo) obj;
            if (this.returnTimeMillis == timeInfo.returnTimeMillis && this.message.equals(timeInfo.message)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InetAddress getAddress() {
        DatagramPacket datagramPacket = this.message.getDatagramPacket();
        if (datagramPacket == null) {
            return null;
        }
        return datagramPacket.getAddress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<String> getComments() {
        return this.comments;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Long getDelay() {
        return this.delayMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NtpV3Packet getMessage() {
        return this.message;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Long getOffset() {
        return this.offsetMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getReturnTime() {
        return this.returnTimeMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.message.hashCode() + (((int) this.returnTimeMillis) * 31);
    }

    public TimeInfo(NtpV3Packet ntpV3Packet, long j, boolean z) {
        this(ntpV3Packet, j, null, z);
    }

    public TimeInfo(NtpV3Packet ntpV3Packet, long j, List<String> list) {
        this(ntpV3Packet, j, list, true);
    }

    public TimeInfo(NtpV3Packet ntpV3Packet, long j) {
        this(ntpV3Packet, j, null, true);
    }
}
