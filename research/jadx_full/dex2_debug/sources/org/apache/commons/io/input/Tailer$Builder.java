package org.apache.commons.io.input;

import java.nio.file.LinkOption;
import java.time.Duration;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.commons.io.build.AbstractOrigin;
import org.apache.commons.io.build.AbstractOriginSupplier;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class Tailer$Builder extends AbstractStreamBuilder<Tailer, Tailer$Builder> {
    private static final Duration DEFAULT_DELAY_DURATION = org.apache.commons.io.filefilter.f.x();
    private boolean reOpen;
    private boolean tailFromEnd;
    private Tailer$Tailable tailable;
    private TailerListener tailerListener;
    private Duration delayDuration = DEFAULT_DELAY_DURATION;
    private boolean startThread = true;
    private boolean ignoreTouch = false;
    private ExecutorService executorService = Executors.newSingleThreadExecutor(new k(1));

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Tailer$Tailable access$300(Tailer$Builder tailer$Builder) {
        return tailer$Builder.tailable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ TailerListener access$400(Tailer$Builder tailer$Builder) {
        return tailer$Builder.tailerListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Duration access$500(Tailer$Builder tailer$Builder) {
        return tailer$Builder.delayDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$600(Tailer$Builder tailer$Builder) {
        return tailer$Builder.tailFromEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$700(Tailer$Builder tailer$Builder) {
        return tailer$Builder.reOpen;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$800(Tailer$Builder tailer$Builder) {
        return tailer$Builder.ignoreTouch;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Thread b(Runnable runnable) {
        return newDaemonThread(runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Thread newDaemonThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "commons-io-tailer");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public Tailer get() {
        Tailer tailer = new Tailer(this, (Tailer$1) null);
        if (this.startThread) {
            this.executorService.submit(tailer);
        }
        return tailer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Tailer$Builder setDelayDuration(Duration duration) {
        if (duration == null) {
            duration = DEFAULT_DELAY_DURATION;
        }
        this.delayDuration = duration;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Tailer$Builder setExecutorService(ExecutorService executorService) {
        Objects.requireNonNull(executorService, "executorService");
        this.executorService = executorService;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Tailer$Builder setIgnoreTouch(boolean z) {
        this.ignoreTouch = z;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOriginSupplier
    public Tailer$Builder setOrigin(AbstractOrigin<?, ?> abstractOrigin) {
        setTailable(new Tailer$TailablePath(abstractOrigin.getPath(), new LinkOption[0], null));
        return (Tailer$Builder) super.setOrigin(abstractOrigin);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Tailer$Builder setReOpen(boolean z) {
        this.reOpen = z;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Tailer$Builder setStartThread(boolean z) {
        this.startThread = z;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Tailer$Builder setTailFromEnd(boolean z) {
        this.tailFromEnd = z;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Tailer$Builder setTailable(Tailer$Tailable tailer$Tailable) {
        Objects.requireNonNull(tailer$Tailable, "tailable");
        this.tailable = tailer$Tailable;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Tailer$Builder setTailerListener(TailerListener tailerListener) {
        Objects.requireNonNull(tailerListener, "tailerListener");
        this.tailerListener = tailerListener;
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    @Override // org.apache.commons.io.build.AbstractOriginSupplier
    public /* bridge */ /* synthetic */ AbstractOriginSupplier setOrigin(AbstractOrigin abstractOrigin) {
        return setOrigin((AbstractOrigin<?, ?>) abstractOrigin);
    }
}
