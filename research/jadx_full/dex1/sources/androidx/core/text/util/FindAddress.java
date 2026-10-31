package androidx.core.text.util;

import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.VisibleForTesting;
import java.util.Locale;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
class FindAddress {
    private static final String HOUSE_COMPONENT = "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)";
    private static final String HOUSE_END = "(?=[,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)";
    private static final String HOUSE_POST_DELIM = ",\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";
    private static final String HOUSE_PRE_DELIM = ":,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";
    private static final int MAX_ADDRESS_LINES = 5;
    private static final int MAX_ADDRESS_WORDS = 14;
    private static final int MAX_LOCATION_NAME_DISTANCE = 5;
    private static final int MIN_ADDRESS_WORDS = 4;
    private static final String NL = "\n\u000b\f\r\u0085\u2028\u2029";
    private static final String SP = "\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000";
    private static final String WORD_DELIM = ",*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";
    private static final String WORD_END = "(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)";
    private static final String WS = "\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";
    private static final int kMaxAddressNameWordLength = 25;
    private static final FindAddress$ZipRange[] sStateZipCodeRanges = {new FindAddress$ZipRange(99, 99, -1, -1), new FindAddress$ZipRange(35, 36, -1, -1), new FindAddress$ZipRange(71, 72, -1, -1), new FindAddress$ZipRange(96, 96, -1, -1), new FindAddress$ZipRange(85, 86, -1, -1), new FindAddress$ZipRange(90, 96, -1, -1), new FindAddress$ZipRange(80, 81, -1, -1), new FindAddress$ZipRange(6, 6, -1, -1), new FindAddress$ZipRange(20, 20, -1, -1), new FindAddress$ZipRange(19, 19, -1, -1), new FindAddress$ZipRange(32, 34, -1, -1), new FindAddress$ZipRange(96, 96, -1, -1), new FindAddress$ZipRange(30, 31, -1, -1), new FindAddress$ZipRange(96, 96, -1, -1), new FindAddress$ZipRange(96, 96, -1, -1), new FindAddress$ZipRange(50, 52, -1, -1), new FindAddress$ZipRange(83, 83, -1, -1), new FindAddress$ZipRange(60, 62, -1, -1), new FindAddress$ZipRange(46, 47, -1, -1), new FindAddress$ZipRange(66, 67, 73, -1), new FindAddress$ZipRange(40, 42, -1, -1), new FindAddress$ZipRange(70, 71, -1, -1), new FindAddress$ZipRange(1, 2, -1, -1), new FindAddress$ZipRange(20, 21, -1, -1), new FindAddress$ZipRange(3, 4, -1, -1), new FindAddress$ZipRange(96, 96, -1, -1), new FindAddress$ZipRange(48, 49, -1, -1), new FindAddress$ZipRange(55, 56, -1, -1), new FindAddress$ZipRange(63, 65, -1, -1), new FindAddress$ZipRange(96, 96, -1, -1), new FindAddress$ZipRange(38, 39, -1, -1), new FindAddress$ZipRange(55, 56, -1, -1), new FindAddress$ZipRange(27, 28, -1, -1), new FindAddress$ZipRange(58, 58, -1, -1), new FindAddress$ZipRange(68, 69, -1, -1), new FindAddress$ZipRange(3, 4, -1, -1), new FindAddress$ZipRange(7, 8, -1, -1), new FindAddress$ZipRange(87, 88, 86, -1), new FindAddress$ZipRange(88, 89, 96, -1), new FindAddress$ZipRange(10, 14, 0, 6), new FindAddress$ZipRange(43, 45, -1, -1), new FindAddress$ZipRange(73, 74, -1, -1), new FindAddress$ZipRange(97, 97, -1, -1), new FindAddress$ZipRange(15, 19, -1, -1), new FindAddress$ZipRange(6, 6, 0, 9), new FindAddress$ZipRange(96, 96, -1, -1), new FindAddress$ZipRange(2, 2, -1, -1), new FindAddress$ZipRange(29, 29, -1, -1), new FindAddress$ZipRange(57, 57, -1, -1), new FindAddress$ZipRange(37, 38, -1, -1), new FindAddress$ZipRange(75, 79, 87, 88), new FindAddress$ZipRange(84, 84, -1, -1), new FindAddress$ZipRange(22, 24, 20, -1), new FindAddress$ZipRange(6, 9, -1, -1), new FindAddress$ZipRange(5, 5, -1, -1), new FindAddress$ZipRange(98, 99, -1, -1), new FindAddress$ZipRange(53, 54, -1, -1), new FindAddress$ZipRange(24, 26, -1, -1), new FindAddress$ZipRange(82, 83, -1, -1)};
    private static final Pattern sWordRe = Pattern.compile("[^,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]+(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    private static final Pattern sHouseNumberRe = Pattern.compile("(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    private static final Pattern sStateRe = Pattern.compile("(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+of[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+states[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+of[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+mariana[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+carolina)|(nd|north[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+hampshire)|(nj|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+jersey)|(nm|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+island)|(sc|south[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+carolina)|(sd|south[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+virginia)|(wy|wyoming))(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    private static final Pattern sLocationNameRe = Pattern.compile("(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    private static final Pattern sSuffixedNumberRe = Pattern.compile("([0-9]+)(st|nd|rd|th)", 2);
    private static final Pattern sZipCodeRe = Pattern.compile("(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FindAddress() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int attemptMatch(String str, MatchResult matchResult) {
        int length;
        MatchResult matchResultMatchState;
        int iEnd = matchResult.end();
        Matcher matcher = sWordRe.matcher(str);
        String strGroup = "";
        int i9 = -1;
        int iEnd2 = -1;
        int i10 = 1;
        int i11 = 1;
        boolean z8 = true;
        boolean z9 = false;
        while (iEnd < str.length()) {
            if (!matcher.find(iEnd)) {
                length = str.length();
            } else if (matcher.end() - matcher.start() <= 25) {
                while (iEnd < matcher.start()) {
                    int i12 = iEnd + 1;
                    if (NL.indexOf(str.charAt(iEnd)) != -1) {
                        i10++;
                    }
                    iEnd = i12;
                }
                if (i10 > 5 || (i11 = i11 + 1) > 14) {
                    break;
                }
                if (matchHouseNumber(str, iEnd) == null) {
                    if (!isValidLocationName(matcher.group(0))) {
                        if (i11 == 5 && !z9) {
                            iEnd = matcher.end();
                            break;
                        }
                        if (z9 && i11 > 4 && (matchResultMatchState = matchState(str, iEnd)) != null) {
                            if (strGroup.equals("et") && matchResultMatchState.group(0).equals("al")) {
                                iEnd = matchResultMatchState.end();
                                break;
                            }
                            Matcher matcher2 = sWordRe.matcher(str);
                            if (!matcher2.find(matchResultMatchState.end())) {
                                iEnd2 = matchResultMatchState.end();
                            } else if (isValidZipCode(matcher2.group(0), matchResultMatchState)) {
                                return matcher2.end();
                            }
                        }
                    } else {
                        z9 = true;
                    }
                    z8 = false;
                } else {
                    if (z8 && i10 > 1) {
                        return -iEnd;
                    }
                    if (i9 == -1) {
                        i9 = iEnd;
                    }
                }
                strGroup = matcher.group(0);
                iEnd = matcher.end();
            } else {
                length = matcher.end();
            }
            return -length;
        }
        if (iEnd2 > 0) {
            return iEnd2;
        }
        if (i9 <= 0) {
            i9 = iEnd;
        }
        return -i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean checkHouseNumber(String str) {
        int i9 = 0;
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (Character.isDigit(str.charAt(i10))) {
                i9++;
            }
        }
        if (i9 > 5) {
            return false;
        }
        Matcher matcher = sSuffixedNumberRe.matcher(str);
        if (!matcher.find()) {
            return true;
        }
        int i11 = Integer.parseInt(matcher.group(1));
        if (i11 == 0) {
            return false;
        }
        String lowerCase = matcher.group(2).toLowerCase(Locale.getDefault());
        int i12 = i11 % 10;
        if (i12 == 1) {
            return lowerCase.equals(i11 % 100 != 11 ? "st" : "th");
        }
        if (i12 == 2) {
            return lowerCase.equals(i11 % 100 != 12 ? "nd" : "th");
        }
        if (i12 != 3) {
            return lowerCase.equals("th");
        }
        return lowerCase.equals(i11 % 100 != 13 ? "rd" : "th");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String findAddress(String str) {
        Matcher matcher = sHouseNumberRe.matcher(str);
        int iEnd = 0;
        while (matcher.find(iEnd)) {
            if (checkHouseNumber(matcher.group(0))) {
                int iStart = matcher.start();
                int iAttemptMatch = attemptMatch(str, matcher);
                if (iAttemptMatch > 0) {
                    return str.substring(iStart, iAttemptMatch);
                }
                iEnd = -iAttemptMatch;
            } else {
                iEnd = matcher.end();
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public static boolean isValidLocationName(String str) {
        return sLocationNameRe.matcher(str).matches();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isValidZipCode(String str, MatchResult matchResult) {
        if (matchResult == null) {
            return false;
        }
        int iGroupCount = matchResult.groupCount();
        while (iGroupCount > 0) {
            int i9 = iGroupCount - 1;
            if (matchResult.group(iGroupCount) != null) {
                iGroupCount = i9;
                break;
            }
            iGroupCount = i9;
        }
        return sZipCodeRe.matcher(str).matches() && sStateZipCodeRanges[iGroupCount].matches(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public static MatchResult matchHouseNumber(String str, int i9) {
        if (i9 > 0 && HOUSE_PRE_DELIM.indexOf(str.charAt(i9 - 1)) == -1) {
            return null;
        }
        Matcher matcherRegion = sHouseNumberRe.matcher(str).region(i9, str.length());
        if (matcherRegion.lookingAt()) {
            MatchResult matchResult = matcherRegion.toMatchResult();
            if (checkHouseNumber(matchResult.group(0))) {
                return matchResult;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public static MatchResult matchState(String str, int i9) {
        if (i9 > 0 && WORD_DELIM.indexOf(str.charAt(i9 - 1)) == -1) {
            return null;
        }
        Matcher matcherRegion = sStateRe.matcher(str).region(i9, str.length());
        if (matcherRegion.lookingAt()) {
            return matcherRegion.toMatchResult();
        }
        return null;
    }

    @VisibleForTesting
    public static boolean isValidZipCode(String str, String str2) {
        return isValidZipCode(str, matchState(str2, 0));
    }

    @VisibleForTesting
    public static boolean isValidZipCode(String str) {
        return sZipCodeRe.matcher(str).matches();
    }
}
