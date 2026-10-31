package org.apache.commons.net.nntp;

import java.util.Calendar;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class NewGroupsOrNewsQuery {
    private final String date;
    private final boolean isGMT;
    private final String time;
    private StringBuffer distributions = null;
    private StringBuffer newsgroups = null;

    public NewGroupsOrNewsQuery(Calendar calendar, boolean z9) {
        this.isGMT = z9;
        StringBuilder sb = new StringBuilder();
        String string = Integer.toString(calendar.get(1));
        int length = string.length();
        if (length >= 2) {
            sb.append(string.substring(length - 2));
        } else {
            sb.append("00");
        }
        String string2 = Integer.toString(calendar.get(2) + 1);
        int length2 = string2.length();
        if (length2 == 1) {
            sb.append('0');
            sb.append(string2);
        } else if (length2 == 2) {
            sb.append(string2);
        } else {
            sb.append("01");
        }
        String string3 = Integer.toString(calendar.get(5));
        int length3 = string3.length();
        if (length3 == 1) {
            sb.append('0');
            sb.append(string3);
        } else if (length3 == 2) {
            sb.append(string3);
        } else {
            sb.append("01");
        }
        this.date = sb.toString();
        sb.setLength(0);
        String string4 = Integer.toString(calendar.get(11));
        int length4 = string4.length();
        if (length4 == 1) {
            sb.append('0');
            sb.append(string4);
        } else if (length4 == 2) {
            sb.append(string4);
        } else {
            sb.append("00");
        }
        String string5 = Integer.toString(calendar.get(12));
        int length5 = string5.length();
        if (length5 == 1) {
            sb.append('0');
            sb.append(string5);
        } else if (length5 == 2) {
            sb.append(string5);
        } else {
            sb.append("00");
        }
        String string6 = Integer.toString(calendar.get(13));
        int length6 = string6.length();
        if (length6 == 1) {
            sb.append('0');
            sb.append(string6);
        } else if (length6 == 2) {
            sb.append(string6);
        } else {
            sb.append("00");
        }
        this.time = sb.toString();
    }

    public void addDistribution(String str) {
        StringBuffer stringBuffer = this.distributions;
        if (stringBuffer != null) {
            stringBuffer.append(',');
        } else {
            this.distributions = new StringBuffer();
        }
        this.distributions.append(str);
    }

    public void addNewsgroup(String str) {
        StringBuffer stringBuffer = this.newsgroups;
        if (stringBuffer != null) {
            stringBuffer.append(',');
        } else {
            this.newsgroups = new StringBuffer();
        }
        this.newsgroups.append(str);
    }

    public String getDate() {
        return this.date;
    }

    public String getDistributions() {
        return Objects.toString(this.distributions, null);
    }

    public String getNewsgroups() {
        return Objects.toString(this.newsgroups, null);
    }

    public String getTime() {
        return this.time;
    }

    public boolean isGMT() {
        return this.isGMT;
    }

    public void omitNewsgroup(String str) {
        addNewsgroup("!" + str);
    }
}
