package org.apache.commons.net.ntp;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.p161io.FilenameUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class TimeStamp implements Serializable, Comparable<TimeStamp> {
    public static final String NTP_DATE_FORMAT = "EEE, MMM dd yyyy HH:mm:ss.SSS";
    protected static final long msb0baseTime = 2085978496000L;
    protected static final long msb1baseTime = -2208988800000L;
    private static final long serialVersionUID = 8139806907588338737L;
    private final long ntpTime;
    private DateFormat simpleFormatter;
    private DateFormat utcFormatter;

    public TimeStamp(Date date) {
        this.ntpTime = date == null ? 0L : toNtpTime(date.getTime());
    }

    private static void appendHexString(StringBuilder sb, long j10) {
        String hexString = Long.toHexString(j10);
        for (int length = hexString.length(); length < 8; length++) {
            sb.append('0');
        }
        sb.append(hexString);
    }

    public static long decodeNtpHexString(String str) {
        if (str == null) {
            throw new NumberFormatException("null");
        }
        int iIndexOf = str.indexOf(46);
        if (iIndexOf != -1) {
            return (Long.parseLong(str.substring(0, iIndexOf), 16) << 32) | Long.parseLong(str.substring(iIndexOf + 1), 16);
        }
        if (str.isEmpty()) {
            return 0L;
        }
        return Long.parseLong(str, 16) << 32;
    }

    public static TimeStamp getCurrentTime() {
        return getNtpTime(System.currentTimeMillis());
    }

    public static TimeStamp getNtpTime(long j10) {
        return new TimeStamp(toNtpTime(j10));
    }

    public static long getTime(long j10) {
        long j11 = j10 >>> 32;
        return ((j11 & 4294967295L) * 1000) + ((j11 & 2147483648L) == 0 ? msb0baseTime : msb1baseTime) + Math.round(((j10 & 4294967295L) * 1000.0d) / 4.294967296E9d);
    }

    public static TimeStamp parseNtpString(String str) {
        return new TimeStamp(decodeNtpHexString(str));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new UnsupportedOperationException("Serialization is not supported");
    }

    public static long toNtpTime(long j10) {
        long j11 = msb0baseTime;
        boolean z9 = j10 < msb0baseTime;
        if (z9) {
            j11 = msb1baseTime;
        }
        long j12 = j10 - j11;
        long j13 = j12 / 1000;
        long j14 = ((j12 % 1000) * 4294967296L) / 1000;
        if (z9) {
            j13 |= 2147483648L;
        }
        return j14 | (j13 << 32);
    }

    public static String toString(long j10) {
        StringBuilder sb = new StringBuilder();
        appendHexString(sb, (j10 >>> 32) & 4294967295L);
        sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        appendHexString(sb, j10 & 4294967295L);
        return sb.toString();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        throw new UnsupportedOperationException("Serialization is not supported");
    }

    @Override // java.lang.Comparable
    public int compareTo(TimeStamp timeStamp) {
        return Long.compare(this.ntpTime, timeStamp.ntpTime);
    }

    public boolean equals(Object obj) {
        return (obj instanceof TimeStamp) && this.ntpTime == ((TimeStamp) obj).ntpValue();
    }

    public Date getDate() {
        return new Date(getTime(this.ntpTime));
    }

    public long getFraction() {
        return this.ntpTime & 4294967295L;
    }

    public long getSeconds() {
        return (this.ntpTime >>> 32) & 4294967295L;
    }

    public int hashCode() {
        long j10 = this.ntpTime;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public long ntpValue() {
        return this.ntpTime;
    }

    public String toDateString() {
        if (this.simpleFormatter == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(NTP_DATE_FORMAT, Locale.US);
            this.simpleFormatter = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
        }
        return this.simpleFormatter.format(getDate());
    }

    public String toUTCString() {
        if (this.utcFormatter == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, MMM dd yyyy HH:mm:ss.SSS 'UTC'", Locale.US);
            this.utcFormatter = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }
        return this.utcFormatter.format(getDate());
    }

    public TimeStamp(long j10) {
        this.ntpTime = j10;
    }

    public TimeStamp(String str) {
        this.ntpTime = decodeNtpHexString(str);
    }

    public String toString() {
        return toString(this.ntpTime);
    }

    public long getTime() {
        return getTime(this.ntpTime);
    }
}
