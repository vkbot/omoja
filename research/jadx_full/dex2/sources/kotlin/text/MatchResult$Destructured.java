package kotlin.text;

import java.util.List;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\tH\u0087\nJ\t\u0010\n\u001a\u00020\tH\u0087\nJ\t\u0010\u000b\u001a\u00020\tH\u0087\nJ\t\u0010\f\u001a\u00020\tH\u0087\nJ\t\u0010\r\u001a\u00020\tH\u0087\nJ\t\u0010\u000e\u001a\u00020\tH\u0087\nJ\t\u0010\u000f\u001a\u00020\tH\u0087\nJ\t\u0010\u0010\u001a\u00020\tH\u0087\nJ\t\u0010\u0011\u001a\u00020\tH\u0087\nJ\t\u0010\u0012\u001a\u00020\tH\u0087\nJ\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\t0\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0015"}, d2 = {"Lkotlin/text/MatchResult$Destructured;", HttpUrl.FRAGMENT_ENCODE_SET, "match", "Lkotlin/text/MatchResult;", "<init>", "(Lkotlin/text/MatchResult;)V", "getMatch", "()Lkotlin/text/MatchResult;", "component1", HttpUrl.FRAGMENT_ENCODE_SET, "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "toList", HttpUrl.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class MatchResult$Destructured {
    private final MatchResult match;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MatchResult$Destructured(MatchResult matchResult) {
        matchResult.getClass();
        this.match = matchResult;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final String component1() {
        return getMatch().getGroupValues().get(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final String component10() {
        return getMatch().getGroupValues().get(10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final String component2() {
        return getMatch().getGroupValues().get(2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final String component3() {
        return getMatch().getGroupValues().get(3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final String component4() {
        return getMatch().getGroupValues().get(4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final String component5() {
        return getMatch().getGroupValues().get(5);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final String component6() {
        return getMatch().getGroupValues().get(6);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final String component7() {
        return getMatch().getGroupValues().get(7);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final String component8() {
        return getMatch().getGroupValues().get(8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private final String component9() {
        return getMatch().getGroupValues().get(9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final MatchResult getMatch() {
        return this.match;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<String> toList() {
        return this.match.getGroupValues().subList(1, this.match.getGroupValues().size());
    }
}
