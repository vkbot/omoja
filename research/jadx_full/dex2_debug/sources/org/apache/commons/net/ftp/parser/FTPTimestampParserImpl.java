package org.apache.commons.net.ftp.parser;

import ai.onnxruntime.a;
import j1.i;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import org.apache.commons.net.ftp.Configurable;
import org.apache.commons.net.ftp.FTPClientConfig;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FTPTimestampParserImpl implements FTPTimestampParser, Configurable {
    private static final int[] CALENDAR_UNITS = {14, 13, 12, 11, 5, 2, 1};
    private SimpleDateFormat defaultDateFormat;
    private int defaultDateSmallestUnitIndex;
    private boolean lenientFutureDates;
    private SimpleDateFormat recentDateFormat;
    private int recentDateSmallestUnitIndex;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPTimestampParserImpl() {
        setDefaultDateFormat(FTPTimestampParser.DEFAULT_SDF, null);
        setRecentDateFormat(FTPTimestampParser.DEFAULT_RECENT_SDF, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int indexOf(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = CALENDAR_UNITS;
            if (i2 >= iArr.length) {
                return 0;
            }
            if (i == iArr[i2]) {
                return i2;
            }
            i2++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void setPrecision(int i, Calendar calendar) {
        if (i <= 0) {
            return;
        }
        int i2 = CALENDAR_UNITS[i - 1];
        if (calendar.get(i2) != 0) {
            return;
        }
        calendar.clear(i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
            i.k("defaultFormatString cannot be null");
            return;
        }
        setDefaultDateFormat(defaultDateFormatStr, dateFormatSymbolsLookupDateFormatSymbols);
        setServerTimeZone(fTPClientConfig.getServerTimeZoneId());
        this.lenientFutureDates = fTPClientConfig.isLenientFutureDates();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SimpleDateFormat getDefaultDateFormat() {
        return this.defaultDateFormat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getDefaultDateFormatString() {
        return this.defaultDateFormat.toPattern();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SimpleDateFormat getRecentDateFormat() {
        return this.recentDateFormat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getRecentDateFormatString() {
        return this.recentDateFormat.toPattern();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TimeZone getServerTimeZone() {
        return this.defaultDateFormat.getTimeZone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getShortMonths() {
        return this.defaultDateFormat.getDateFormatSymbols().getShortMonths();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isLenientFutureDates() {
        return this.lenientFutureDates;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Calendar parseTimestamp(String str, Calendar calendar) throws ParseException {
        Calendar calendar2 = (Calendar) calendar.clone();
        calendar2.setTimeZone(getServerTimeZone());
        if (this.recentDateFormat != null) {
            Calendar calendar3 = (Calendar) calendar.clone();
            calendar3.setTimeZone(getServerTimeZone());
            if (this.lenientFutureDates) {
                calendar3.add(5, 1);
            }
            String strD = a.D(str, " ", Integer.toString(calendar3.get(1)));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.recentDateFormat.toPattern() + " yyyy", this.recentDateFormat.getDateFormatSymbols());
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(this.recentDateFormat.getTimeZone());
            ParsePosition parsePosition = new ParsePosition(0);
            Date date = simpleDateFormat.parse(strD, parsePosition);
            if (date != null && parsePosition.getIndex() == strD.length()) {
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
            StringBuilder sbX = a.x("Timestamp '", str, "' could not be parsed using a server time of ");
            sbX.append(calendar.getTime().toString());
            throw new ParseException(sbX.toString(), parsePosition2.getErrorIndex());
        }
        calendar2.setTime(date2);
        setPrecision(this.defaultDateSmallestUnitIndex, calendar2);
        return calendar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLenientFutureDates(boolean z) {
        this.lenientFutureDates = z;
    }

    @Override // org.apache.commons.net.ftp.parser.FTPTimestampParser
    public Calendar parseTimestamp(String str) {
        return parseTimestamp(str, Calendar.getInstance());
    }
}
