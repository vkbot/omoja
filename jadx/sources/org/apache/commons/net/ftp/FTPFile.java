package org.apache.commons.net.ftp;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.time.Instant;
import java.util.Calendar;
import java.util.Date;
import java.util.Formatter;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FTPFile implements Serializable {
    public static final int DIRECTORY_TYPE = 1;
    public static final int EXECUTE_PERMISSION = 2;
    public static final int FILE_TYPE = 0;
    public static final int GROUP_ACCESS = 1;
    public static final int READ_PERMISSION = 0;
    public static final int SYMBOLIC_LINK_TYPE = 2;
    public static final int UNKNOWN_TYPE = 3;
    public static final int USER_ACCESS = 0;
    public static final int WORLD_ACCESS = 2;
    public static final int WRITE_PERMISSION = 1;
    private static final long serialVersionUID = 9010790363003271996L;
    private Calendar calendar;
    private String group;
    private int hardLinkCount;
    private String link;
    private String name;
    private final boolean[][] permissions;
    private String rawListing;
    private long size;
    private int type;
    private String user;

    public FTPFile() {
        this.type = 3;
        this.size = -1L;
        this.user = "";
        this.group = "";
        this.permissions = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 3, 3);
    }

    private char formatType() {
        int i10 = this.type;
        if (i10 == 0) {
            return '-';
        }
        if (i10 != 1) {
            return i10 != 2 ? '?' : 'l';
        }
        return 'd';
    }

    private String permissionToString(int i10) {
        StringBuilder sb = new StringBuilder(3);
        if (hasPermission(i10, 0)) {
            sb.append('r');
        } else {
            sb.append('-');
        }
        if (hasPermission(i10, 1)) {
            sb.append('w');
        } else {
            sb.append('-');
        }
        if (hasPermission(i10, 2)) {
            sb.append('x');
        } else {
            sb.append('-');
        }
        return sb.toString();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new UnsupportedOperationException("Serialization is not supported");
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        throw new UnsupportedOperationException("Serialization is not supported");
    }

    public String getGroup() {
        return this.group;
    }

    public int getHardLinkCount() {
        return this.hardLinkCount;
    }

    public String getLink() {
        return this.link;
    }

    public String getName() {
        return this.name;
    }

    public String getRawListing() {
        return this.rawListing;
    }

    public long getSize() {
        return this.size;
    }

    public Calendar getTimestamp() {
        return this.calendar;
    }

    public Instant getTimestampInstant() {
        Calendar calendar = this.calendar;
        if (calendar == null) {
            return null;
        }
        return calendar.toInstant();
    }

    public int getType() {
        return this.type;
    }

    public String getUser() {
        return this.user;
    }

    public boolean hasPermission(int i10, int i11) {
        boolean[][] zArr = this.permissions;
        if (zArr == null) {
            return false;
        }
        return zArr[i10][i11];
    }

    public boolean isDirectory() {
        return this.type == 1;
    }

    public boolean isFile() {
        return this.type == 0;
    }

    public boolean isSymbolicLink() {
        return this.type == 2;
    }

    public boolean isUnknown() {
        return this.type == 3;
    }

    public boolean isValid() {
        return this.permissions != null;
    }

    public void setGroup(String str) {
        this.group = str;
    }

    public void setHardLinkCount(int i10) {
        this.hardLinkCount = i10;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPermission(int i10, int i11, boolean z9) {
        this.permissions[i10][i11] = z9;
    }

    public void setRawListing(String str) {
        this.rawListing = str;
    }

    public void setSize(long j10) {
        this.size = j10;
    }

    public void setTimestamp(Calendar calendar) {
        this.calendar = calendar;
    }

    public void setType(int i10) {
        this.type = i10;
    }

    public void setUser(String str) {
        this.user = str;
    }

    public String toFormattedString(String str) {
        if (!isValid()) {
            return "[Invalid: could not parse file entry]";
        }
        StringBuilder sb = new StringBuilder();
        Formatter formatter = new Formatter(sb);
        try {
            sb.append(formatType());
            sb.append(permissionToString(0));
            sb.append(permissionToString(1));
            sb.append(permissionToString(2));
            formatter.format(" %4d", Integer.valueOf(getHardLinkCount()));
            formatter.format(" %-8s %-8s", getUser(), getGroup());
            formatter.format(" %8d", Long.valueOf(getSize()));
            Calendar timestamp = getTimestamp();
            if (timestamp != null) {
                if (str != null) {
                    TimeZone timeZone = TimeZone.getTimeZone(str);
                    if (!timeZone.equals(timestamp.getTimeZone())) {
                        Date time = timestamp.getTime();
                        Calendar calendar = Calendar.getInstance(timeZone);
                        calendar.setTime(time);
                        timestamp = calendar;
                    }
                }
                formatter.format(" %1$tY-%1$tm-%1$td", timestamp);
                if (timestamp.isSet(11)) {
                    formatter.format(" %1$tH", timestamp);
                    if (timestamp.isSet(12)) {
                        formatter.format(":%1$tM", timestamp);
                        if (timestamp.isSet(13)) {
                            formatter.format(":%1$tS", timestamp);
                            if (timestamp.isSet(14)) {
                                formatter.format(".%1$tL", timestamp);
                            }
                        }
                    }
                    formatter.format(" %1$tZ", timestamp);
                }
            }
            sb.append(' ');
            sb.append(getName());
            formatter.close();
            return sb.toString();
        } catch (Throwable th) {
            try {
                formatter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public String toString() {
        return getRawListing();
    }

    public FTPFile(String str) {
        this.type = 3;
        this.size = -1L;
        this.user = "";
        this.group = "";
        this.permissions = null;
        this.rawListing = str;
    }

    public String toFormattedString() {
        return toFormattedString(null);
    }
}
