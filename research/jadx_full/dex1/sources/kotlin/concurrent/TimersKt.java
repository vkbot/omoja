package kotlin.concurrent;

import androidx.constraintlayout.core.motion.utils.TypedValues$CycleType;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a;\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a;\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a;\u0010\f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a;\u0010\f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a\u001a\u0010\r\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0001\u001aO\u0010\r\u001a\u00020\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001aM\u0010\r\u001a\u00020\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001aO\u0010\u0014\u001a\u00020\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001aM\u0010\u0014\u001a\u00020\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a'\u0010\u0015\u001a\u00020\u00012\u0019\b\u0004\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"schedule", "Ljava/util/TimerTask;", "Ljava/util/Timer;", "delay", "", "action", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "time", "Ljava/util/Date;", TypedValues$CycleType.S_WAVE_PERIOD, "scheduleAtFixedRate", "timer", "name", "", "daemon", "", "initialDelay", "startAt", "fixedRateTimer", "timerTask", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmName(name = "TimersKt")
public final class TimersKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private static final Timer fixedRateTimer(String str, boolean z8, Date date, long j9, Function1<? super TimerTask, Unit> function1) {
        date.getClass();
        function1.getClass();
        Timer timer = timer(str, z8);
        timer.scheduleAtFixedRate(new TimersKt$timerTask$1(function1), date, j9);
        return timer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Timer fixedRateTimer$default(String str, boolean z8, long j9, long j10, Function1 function1, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            z8 = false;
        }
        if ((i9 & 4) != 0) {
            j9 = 0;
        }
        function1.getClass();
        Timer timer = timer(str, z8);
        timer.scheduleAtFixedRate(new TimersKt$timerTask$1(function1), j9, j10);
        return timer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private static final TimerTask schedule(Timer timer, Date date, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        date.getClass();
        function1.getClass();
        TimersKt$timerTask$1 timersKt$timerTask$1 = new TimersKt$timerTask$1(function1);
        timer.schedule(timersKt$timerTask$1, date);
        return timersKt$timerTask$1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private static final TimerTask scheduleAtFixedRate(Timer timer, long j9, long j10, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        function1.getClass();
        TimersKt$timerTask$1 timersKt$timerTask$1 = new TimersKt$timerTask$1(function1);
        timer.scheduleAtFixedRate(timersKt$timerTask$1, j9, j10);
        return timersKt$timerTask$1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private static final Timer timer(String str, boolean z8, Date date, long j9, Function1<? super TimerTask, Unit> function1) {
        date.getClass();
        function1.getClass();
        Timer timer = timer(str, z8);
        timer.schedule(new TimersKt$timerTask$1(function1), date, j9);
        return timer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Timer timer$default(String str, boolean z8, long j9, long j10, Function1 function1, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            z8 = false;
        }
        if ((i9 & 4) != 0) {
            j9 = 0;
        }
        function1.getClass();
        Timer timer = timer(str, z8);
        timer.schedule(new TimersKt$timerTask$1(function1), j9, j10);
        return timer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private static final TimerTask timerTask(Function1<? super TimerTask, Unit> function1) {
        function1.getClass();
        return new TimersKt$timerTask$1(function1);
    }

    @InlineOnly
    private static final TimerTask schedule(Timer timer, long j9, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        function1.getClass();
        TimersKt$timerTask$1 timersKt$timerTask$1 = new TimersKt$timerTask$1(function1);
        timer.schedule(timersKt$timerTask$1, j9);
        return timersKt$timerTask$1;
    }

    @InlineOnly
    private static final TimerTask scheduleAtFixedRate(Timer timer, Date date, long j9, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        date.getClass();
        function1.getClass();
        TimersKt$timerTask$1 timersKt$timerTask$1 = new TimersKt$timerTask$1(function1);
        timer.scheduleAtFixedRate(timersKt$timerTask$1, date, j9);
        return timersKt$timerTask$1;
    }

    @InlineOnly
    private static final Timer fixedRateTimer(String str, boolean z8, long j9, long j10, Function1<? super TimerTask, Unit> function1) {
        function1.getClass();
        Timer timer = timer(str, z8);
        timer.scheduleAtFixedRate(new TimersKt$timerTask$1(function1), j9, j10);
        return timer;
    }

    @InlineOnly
    private static final Timer timer(String str, boolean z8, long j9, long j10, Function1<? super TimerTask, Unit> function1) {
        function1.getClass();
        Timer timer = timer(str, z8);
        timer.schedule(new TimersKt$timerTask$1(function1), j9, j10);
        return timer;
    }

    @InlineOnly
    private static final TimerTask schedule(Timer timer, long j9, long j10, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        function1.getClass();
        TimersKt$timerTask$1 timersKt$timerTask$1 = new TimersKt$timerTask$1(function1);
        timer.schedule(timersKt$timerTask$1, j9, j10);
        return timersKt$timerTask$1;
    }

    @PublishedApi
    public static final Timer timer(String str, boolean z8) {
        return str == null ? new Timer(z8) : new Timer(str, z8);
    }

    @InlineOnly
    private static final TimerTask schedule(Timer timer, Date date, long j9, Function1<? super TimerTask, Unit> function1) {
        timer.getClass();
        date.getClass();
        function1.getClass();
        TimersKt$timerTask$1 timersKt$timerTask$1 = new TimersKt$timerTask$1(function1);
        timer.schedule(timersKt$timerTask$1, date, j9);
        return timersKt$timerTask$1;
    }

    public static /* synthetic */ Timer fixedRateTimer$default(String str, boolean z8, Date date, long j9, Function1 function1, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            z8 = false;
        }
        date.getClass();
        function1.getClass();
        Timer timer = timer(str, z8);
        timer.scheduleAtFixedRate(new TimersKt$timerTask$1(function1), date, j9);
        return timer;
    }

    public static /* synthetic */ Timer timer$default(String str, boolean z8, Date date, long j9, Function1 function1, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            z8 = false;
        }
        date.getClass();
        function1.getClass();
        Timer timer = timer(str, z8);
        timer.schedule(new TimersKt$timerTask$1(function1), date, j9);
        return timer;
    }
}
