package org.apache.commons.net.ntp;

import java.net.DatagramPacket;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class TimeInfo {
    private List<String> comments;
    private Long delayMillis;
    private boolean detailsComputed;
    private final NtpV3Packet message;
    private Long offsetMillis;
    private final long returnTimeMillis;

    public TimeInfo(NtpV3Packet ntpV3Packet, long j10, List<String> list, boolean z9) {
        if (ntpV3Packet == null) {
            C1929i.m3029k("message cannot be null");
            throw null;
        }
        this.returnTimeMillis = j10;
        this.message = ntpV3Packet;
        this.comments = list;
        if (z9) {
            computeDetails();
        }
    }

    public void addComment(String str) {
        if (this.comments == null) {
            this.comments = new ArrayList();
        }
        this.comments.add(str);
    }

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
        long j10 = 0;
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
            long j11 = this.returnTimeMillis;
            if (time > j11) {
                this.comments.add("Error: OrigTime > DestRcvTime");
            } else {
                this.delayMillis = Long.valueOf(j11 - time);
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
        long j12 = this.returnTimeMillis - time;
        if (time3 >= time2) {
            long j13 = time3 - time2;
            if (j13 <= j12) {
                j10 = j12 - j13;
            } else if (j13 - j12 != 1) {
                this.comments.add("Warning: processing time > total network time");
            } else if (j12 != 0) {
                this.comments.add("Info: processing time > total network time by 1 ms -> assume zero delay");
            }
            this.delayMillis = Long.valueOf(j10);
            if (time > this.returnTimeMillis) {
                this.comments.add("Error: OrigTime > DestRcvTime");
            }
            this.offsetMillis = Long.valueOf((((time2 - time) + time3) - this.returnTimeMillis) / 2);
        }
        this.comments.add("Error: xmitTime < rcvTime");
        j10 = j12;
        this.delayMillis = Long.valueOf(j10);
        if (time > this.returnTimeMillis) {
            this.comments.add("Error: OrigTime > DestRcvTime");
        }
        this.offsetMillis = Long.valueOf((((time2 - time) + time3) - this.returnTimeMillis) / 2);
    }

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

    public InetAddress getAddress() {
        DatagramPacket datagramPacket = this.message.getDatagramPacket();
        if (datagramPacket == null) {
            return null;
        }
        return datagramPacket.getAddress();
    }

    public List<String> getComments() {
        return this.comments;
    }

    public Long getDelay() {
        return this.delayMillis;
    }

    public NtpV3Packet getMessage() {
        return this.message;
    }

    public Long getOffset() {
        return this.offsetMillis;
    }

    public long getReturnTime() {
        return this.returnTimeMillis;
    }

    public int hashCode() {
        return this.message.hashCode() + (((int) this.returnTimeMillis) * 31);
    }

    public TimeInfo(NtpV3Packet ntpV3Packet, long j10, boolean z9) {
        this(ntpV3Packet, j10, null, z9);
    }

    public TimeInfo(NtpV3Packet ntpV3Packet, long j10, List<String> list) {
        this(ntpV3Packet, j10, list, true);
    }

    public TimeInfo(NtpV3Packet ntpV3Packet, long j10) {
        this(ntpV3Packet, j10, null, true);
    }
}
