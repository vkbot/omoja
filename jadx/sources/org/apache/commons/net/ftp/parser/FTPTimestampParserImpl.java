package org.apache.commons.net.ftp.parser;

import ai.onnxruntime.AbstractC0074a;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import org.apache.commons.net.ftp.Configurable;
import org.apache.commons.net.ftp.FTPClientConfig;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FTPTimestampParserImpl implements FTPTimestampParser, Configurable {
    private static final int[] CALENDAR_UNITS = {14, 13, 12, 11, 5, 2, 1};
    private SimpleDateFormat defaultDateFormat;
    private int defaultDateSmallestUnitIndex;
    private boolean lenientFutureDates;
    private SimpleDateFormat recentDateFormat;
    private int recentDateSmallestUnitIndex;

    public FTPTimestampParserImpl() {
        setDefaultDateFormat(FTPTimestampParser.DEFAULT_SDF, null);
        setRecentDateFormat(FTPTimestampParser.DEFAULT_RECENT_SDF, null);
    }

    private static int getEntry(SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat == null) {
            return 0;
        }
        String pattern = simpleDateFormat.toPattern();
        for (char c : "SsmHdM".toCharArray()) {
            if (pattern.indexOf(c) != -1) {
                if (c == 'H') {
                    return indexOf(11);
                }
                if (c == 'M') {
                    return indexOf(2);
                }
                if (c == 'S') {
                    return indexOf(14);
                }
                if (c == 'd') {
                    return indexOf(5);
                }
                if (c == 'm') {
                    return indexOf(12);
                }
                if (c == 's') {
                    return indexOf(13);
                }
            }
        }
        return 0;
    }

    private static int indexOf(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = CALENDAR_UNITS;
            if (i11 >= iArr.length) {
                return 0;
            }
            if (i10 == iArr[i11]) {
                return i11;
            }
            i11++;
        }
    }

    private void setDefaultDateFormat(String str, DateFormatSymbols dateFormatSymbols) {
        if (str != null) {
            if (dateFormatSymbols != null) {
                this.defaultDateFormat = new SimpleDateFormat(str, dateFormatSymbols);
            } else {
                this.defaultDateFormat = new SimpleDateFormat(str);
            }
            this.defaultDateFormat.setLenient(false);
        } else {
            this.defaultDateFormat = null;
        }
        this.defaultDateSmallestUnitIndex = getEntry(this.defaultDateFormat);
    }

    private static void setPrecision(int i10, Calendar calendar) {
        if (i10 <= 0) {
            return;
        }
        int i11 = CALENDAR_UNITS[i10 - 1];
        if (calendar.get(i11) != 0) {
            return;
        }
        calendar.clear(i11);
    }

    private void setRecentDateFormat(String str, DateFormatSymbols dateFormatSymbols) {
        if (str != null) {
            if (dateFormatSymbols != null) {
                this.recentDateFormat = new SimpleDateFormat(str, dateFormatSymbols);
            } else {
                this.recentDateFormat = new SimpleDateFormat(str);
            }
            this.recentDateFormat.setLenient(false);
        } else {
            this.recentDateFormat = null;
        }
        this.recentDateSmallestUnitIndex = getEntry(this.recentDateFormat);
    }

    private void setServerTimeZone(String str) {
        TimeZone timeZone = TimeZone.getDefault();
        if (str != null) {
            timeZone = TimeZone.getTimeZone(str);
        }
        this.defaultDateFormat.setTimeZone(timeZone);
        SimpleDateFormat simpleDateFormat = this.recentDateFormat;
        if (simpleDateFormat != null) {
            simpleDateFormat.setTimeZone(timeZone);
        }
    }

    @Override // org.apache.commons.net.ftp.Configurable
    public void configure(FTPClientConfig fTPClientConfig) {
        DateFormatSymbols dateFormatSymbolsLookupDateFormatSymbols;
        String serverLanguageCode = fTPClientConfig.getServerLanguageCode();
        String shortMonthNames = fTPClientConfig.getShortMonthNames();
        if (shortMonthNames != null) {
            dateFormatSymbolsLookupDateFormatSymbols = FTPClientConfig.getDateFormatSymbols(shortMonthNames);
        } else {
            dateFormatSymbolsLookupDateFormatSymbols = serverLanguageCode != null ? FTPClientConfig.lookupDateFormatSymbols(serverLanguageCode) : FTPClientConfig.lookupDateFormatSymbols("en");
        }
        setRecentDateFormat(fTPClientConfig.getRecentDateFormatStr(), dateFormatSymbolsLookupDateFormatSymbols);
        String defaultDateFormatStr = fTPClientConfig.getDefaultDateFormatStr();
        if (defaultDateFormatStr == null) {
            C1929i.m3029k("defaultFormatString cannot be null");
            return;
        }
        setDefaultDateFormat(defaultDateFormatStr, dateFormatSymbolsLookupDateFormatSymbols);
        setServerTimeZone(fTPClientConfig.getServerTimeZoneId());
        this.lenientFutureDates = fTPClientConfig.isLenientFutureDates();
    }

    public SimpleDateFormat getDefaultDateFormat() {
        return this.defaultDateFormat;
    }

    public String getDefaultDateFormatString() {
        return this.defaultDateFormat.toPattern();
    }

    public SimpleDateFormat getRecentDateFormat() {
        return this.recentDateFormat;
    }

    public String getRecentDateFormatString() {
        return this.recentDateFormat.toPattern();
    }

    public TimeZone getServerTimeZone() {
        return this.defaultDateFormat.getTimeZone();
    }

    public String[] getShortMonths() {
        return this.defaultDateFormat.getDateFormatSymbols().getShortMonths();
    }

    public boolean isLenientFutureDates() {
        return this.lenientFutureDates;
    }

    public Calendar parseTimestamp(String str, Calendar calendar) throws ParseException {
        Calendar calendar2 = (Calendar) calendar.clone();
        calendar2.setTimeZone(getServerTimeZone());
        if (this.recentDateFormat != null) {
            Calendar calendar3 = (Calendar) calendar.clone();
            calendar3.setTimeZone(getServerTimeZone());
            if (this.lenientFutureDates) {
                calendar3.add(5, 1);
            }
            String strM149D = AbstractC0074a.m149D(str, " ", Integer.toString(calendar3.get(1)));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.recentDateFormat.toPattern() + " yyyy", this.recentDateFormat.getDateFormatSymbols());
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(this.recentDateFormat.getTimeZone());
            ParsePosition parsePosition = new ParsePosition(0);
            Date date = simpleDateFormat.parse(strM149D, parsePosition);
            if (date != null && parsePosition.getIndex() == strM149D.length()) {
                calendar2.setTime(date);
                if (calendar2.after(calendar3)) {
                    calendar2.add(1, -1);
                }
                setPrecision(this.recentDateSmallestUnitIndex, calendar2);
                return calendar2;
            }
        }
        ParsePosition parsePosition2 = new ParsePosition(0);
        Date date2 = this.defaultDateFormat.parse(str, parsePosition2);
        if (date2 == null || parsePosition2.getIndex() != str.length()) {
            StringBuilder sbM173x = AbstractC0074a.m173x("Timestamp '", str, "' could not be parsed using a server time of ");
            sbM173x.append(calendar.getTime().toString());
            throw new ParseException(sbM173x.toString(), parsePosition2.getErrorIndex());
        }
        calendar2.setTime(date2);
        setPrecision(this.defaultDateSmallestUnitIndex, calendar2);
        return calendar2;
    }

    public void setLenientFutureDates(boolean z9) {
        this.lenientFutureDates = z9;
    }

    @Override // org.apache.commons.net.ftp.parser.FTPTimestampParser
    public Calendar parseTimestamp(String str) {
        return parseTimestamp(str, Calendar.getInstance());
    }
}
