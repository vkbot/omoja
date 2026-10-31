package kotlin.concurrent;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a;\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a;\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a;\u0010\f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a;\u0010\f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a\u001a\u0010\r\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0001\u001aO\u0010\r\u001a\u00020\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001aM\u0010\r\u001a\u00020\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001aO\u0010\u0014\u001a\u00020\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001aM\u0010\u0014\u001a\u00020\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a'\u0010\u0015\u001a\u00020\u00012\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, m3159d2 = {"schedule", "Ljava/util/TimerTask;", "Ljava/util/Timer;", "delay", "", "action", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "time", "Ljava/util/Date;", TypedValues.CycleType.S_WAVE_PERIOD, "scheduleAtFixedRate", "timer", "name", "", "daemon", "", "initialDelay", "startAt", "fixedRateTimer", "timerTask", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmName(name = "TimersKt")
public final class TimersKt {

    /* JADX INFO: renamed from: kotlin.concurrent.TimersKt$timerTask$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m3159d2 = {"kotlin/concurrent/TimersKt$timerTask$1", "Ljava/util/TimerTask;", "run", "", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = 176)
    @SourceDebugExtension({"SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n*L\n1#1,148:1\n*E\n"})
    public static final class C20951 extends TimerTask {
        final /* synthetic */ Function1<TimerTask, Unit> $action;

        /* JADX WARN: Multi-variable type inference failed */
        public C20951(Function1<? super TimerTask, Unit> function1) {
            this.$action = function1;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.$action.invoke(this);
        }
    }

    @InlineOnly
    private static final Timer fixedRateTimer(String str, boolean z9, Date date, long j10, Function1<? super TimerTask, Unit> function1) {
        date.getClass();
        function1.getClass();
        Timer timer = timer(str, z9);
        timer.scheduleAtFixedRate(new C20951(function1), date, j10);
        return timer;
    }

    public static /* synthetic */ Timer fixedRateTimer$default(String str, boolean z9, long j10, long j11, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        if ((i10 & 4) != 0) {
            j10 = 0;
        }
        function1.getClass();
        Timer timer = timer(str, z9);
        timer.scheduleAtFixedRate(new C20951(function1), j10, j11);
        return timer;
    }

    @InlineOnly
    private static final TimerTask schedule(Timer timer, Date date, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        date.getClass();
        function1.getClass();
        C20951 c20951 = new C20951(function1);
        timer.schedule(c20951, date);
        return c20951;
    }

    @InlineOnly
    private static final TimerTask scheduleAtFixedRate(Timer timer, long j10, long j11, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        function1.getClass();
        C20951 c20951 = new C20951(function1);
        timer.scheduleAtFixedRate(c20951, j10, j11);
        return c20951;
    }

    @InlineOnly
    private static final Timer timer(String str, boolean z9, Date date, long j10, Function1<? super TimerTask, Unit> function1) {
        date.getClass();
        function1.getClass();
        Timer timer = timer(str, z9);
        timer.schedule(new C20951(function1), date, j10);
        return timer;
    }

    public static /* synthetic */ Timer timer$default(String str, boolean z9, long j10, long j11, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        if ((i10 & 4) != 0) {
            j10 = 0;
        }
        function1.getClass();
        Timer timer = timer(str, z9);
        timer.schedule(new C20951(function1), j10, j11);
        return timer;
    }

    @InlineOnly
    private static final TimerTask timerTask(Function1<? super TimerTask, Unit> function1) {
        function1.getClass();
        return new C20951(function1);
    }

    @InlineOnly
    private static final TimerTask schedule(Timer timer, long j10, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        function1.getClass();
        C20951 c20951 = new C20951(function1);
        timer.schedule(c20951, j10);
        return c20951;
    }

    @InlineOnly
    private static final TimerTask scheduleAtFixedRate(Timer timer, Date date, long j10, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        date.getClass();
        function1.getClass();
        C20951 c20951 = new C20951(function1);
        timer.scheduleAtFixedRate(c20951, date, j10);
        return c20951;
    }

    @InlineOnly
    private static final Timer fixedRateTimer(String str, boolean z9, long j10, long j11, Function1<? super TimerTask, Unit> function1) {
        function1.getClass();
        Timer timer = timer(str, z9);
        timer.scheduleAtFixedRate(new C20951(function1), j10, j11);
        return timer;
    }

    @InlineOnly
    private static final Timer timer(String str, boolean z9, long j10, long j11, Function1<? super TimerTask, Unit> function1) {
        function1.getClass();
        Timer timer = timer(str, z9);
        timer.schedule(new C20951(function1), j10, j11);
        return timer;
    }

    @InlineOnly
    private static final TimerTask schedule(Timer timer, long j10, long j11, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        function1.getClass();
        C20951 c20951 = new C20951(function1);
        timer.schedule(c20951, j10, j11);
        return c20951;
    }

    @PublishedApi
    public static final Timer timer(String str, boolean z9) {
        return str == null ? new Timer(z9) : new Timer(str, z9);
    }

    @InlineOnly
    private static final TimerTask schedule(Timer timer, Date date, long j10, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        date.getClass();
        function1.getClass();
        C20951 c20951 = new C20951(function1);
        timer.schedule(c20951, date, j10);
        return c20951;
    }

    public static /* synthetic */ Timer fixedRateTimer$default(String str, boolean z9, Date date, long j10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        date.getClass();
        function1.getClass();
        Timer timer = timer(str, z9);
        timer.scheduleAtFixedRate(new C20951(function1), date, j10);
        return timer;
    }

    public static /* synthetic */ Timer timer$default(String str, boolean z9, Date date, long j10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        date.getClass();
        function1.getClass();
        Timer timer = timer(str, z9);
        timer.schedule(new C20951(function1), date, j10);
        return timer;
    }
}
