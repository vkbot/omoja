package kotlin.text;

import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", HttpUrl.FRAGMENT_ENCODE_SET, "Lkotlin/sequences/SequenceScope;", HttpUrl.FRAGMENT_ENCODE_SET}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlin.text.Regex$splitToSequence$1", f = "Regex.kt", i = {0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {280, 288, 292}, m = "invokeSuspend", n = {"$this$sequence", "matcher", "$this$sequence", "matcher", "nextStart", "splitCount", "$this$sequence", "matcher", "nextStart", "splitCount"}, s = {"L$0", "L$1", "L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1"})
public final class Regex$splitToSequence$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super String>, Continuation<? super Unit>, Object> {
    final /* synthetic */ CharSequence $input;
    final /* synthetic */ int $limit;
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ Regex this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Regex$splitToSequence$1(Regex regex, CharSequence charSequence, int i, Continuation<? super Regex$splitToSequence$1> continuation) {
        super(2, continuation);
        this.this$0 = regex;
        this.$input = charSequence;
        this.$limit = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Regex$splitToSequence$1 regex$splitToSequence$1 = new Regex$splitToSequence$1(this.this$0, this.$input, this.$limit, continuation);
        regex$splitToSequence$1.L$0 = obj;
        return regex$splitToSequence$1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(SequenceScope<? super String> sequenceScope, Continuation<? super Unit> continuation) {
        return create(sequenceScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:21:0x0074  */
    /* JADX WARN: Code duplicated, block: B:24:0x007f  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ae, code lost:
    
        if (r0.yield(r4, r10) == r1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00cc, code lost:
    
        if (r0.yield(r2, r10) == r1) goto L35;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0074 -> B:22:0x0075). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        int i;
        Matcher matcher;
        int i2;
        String string;
        int i3;
        int iEnd;
        int i4;
        SequenceScope sequenceScope = (SequenceScope) this.L$0;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = this.label;
        if (i5 == 0) {
            ResultKt.throwOnFailure(obj);
            Matcher matcher2 = Regex.access$getNativePattern$p(this.this$0).matcher(this.$input);
            if (this.$limit == 1 || !matcher2.find()) {
                String string2 = this.$input.toString();
                this.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                this.L$1 = SpillingKt.nullOutSpilledVariable(matcher2);
                this.label = 1;
            } else {
                i = 0;
                matcher = matcher2;
                i2 = 0;
                string = this.$input.subSequence(i, matcher.start()).toString();
                this.L$0 = sequenceScope;
                this.L$1 = matcher;
                this.I$0 = i;
                this.I$1 = i2;
                this.label = 2;
                if (sequenceScope.yield(string, this) != coroutine_suspended) {
                    i3 = i2;
                    iEnd = matcher.end();
                    i4 = i3 + 1;
                    if (i4 == this.$limit - 1) {
                    }
                    CharSequence charSequence = this.$input;
                    String string3 = charSequence.subSequence(iEnd, charSequence.length()).toString();
                    this.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(matcher);
                    this.I$0 = iEnd;
                    this.I$1 = i4;
                    this.label = 3;
                }
            }
            return coroutine_suspended;
        }
        if (i5 != 1) {
            if (i5 == 2) {
                i3 = this.I$1;
                matcher = (Matcher) this.L$1;
                ResultKt.throwOnFailure(obj);
                iEnd = matcher.end();
                i4 = i3 + 1;
                if (i4 == this.$limit - 1 && matcher.find()) {
                    i = iEnd;
                    i2 = i4;
                    string = this.$input.subSequence(i, matcher.start()).toString();
                    this.L$0 = sequenceScope;
                    this.L$1 = matcher;
                    this.I$0 = i;
                    this.I$1 = i2;
                    this.label = 2;
                    if (sequenceScope.yield(string, this) != coroutine_suspended) {
                        i3 = i2;
                        iEnd = matcher.end();
                        i4 = i3 + 1;
                        if (i4 == this.$limit - 1) {
                        }
                        CharSequence charSequence2 = this.$input;
                        String string4 = charSequence2.subSequence(iEnd, charSequence2.length()).toString();
                        this.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                        this.L$1 = SpillingKt.nullOutSpilledVariable(matcher);
                        this.I$0 = iEnd;
                        this.I$1 = i4;
                        this.label = 3;
                    }
                } else {
                    CharSequence charSequence3 = this.$input;
                    String string5 = charSequence3.subSequence(iEnd, charSequence3.length()).toString();
                    this.L$0 = SpillingKt.nullOutSpilledVariable(sequenceScope);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(matcher);
                    this.I$0 = iEnd;
                    this.I$1 = i4;
                    this.label = 3;
                }
                return coroutine_suspended;
            }
            if (i5 != 3) {
                j1.i.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(obj);
        return Unit.INSTANCE;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke((SequenceScope<? super String>) obj, (Continuation<? super Unit>) obj2);
    }
}
