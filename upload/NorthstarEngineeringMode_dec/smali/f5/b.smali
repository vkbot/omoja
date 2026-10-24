.class public final Lf5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final Z:Ljava/lang/String;

.field public final b1:Ljava/lang/Throwable;
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/time/Instant;

.field public final r:Ljava/time/format/DateTimeFormatter;
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation
.end field

.field public final x:La5/a;

.field public final y:Lc5/e;


# direct methods
.method public constructor <init>(La5/a;Lc5/e;Ljava/lang/Throwable;Ljava/time/format/DateTimeFormatter;Ljava/time/Instant;)V
    .locals 0
    .param p3    # Ljava/lang/Throwable;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/time/format/DateTimeFormatter;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lf5/b;->r:Ljava/time/format/DateTimeFormatter;

    iput-object p5, p0, Lf5/b;->c:Ljava/time/Instant;

    const-string p4, "level"

    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lf5/b;->x:La5/a;

    const-string p1, "message"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lf5/b;->y:Lc5/e;

    iput-object p3, p0, Lf5/b;->b1:Ljava/lang/Throwable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf5/b;->Z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf5/b;->y:Lc5/e;

    invoke-interface {p0}, Lc5/e;->B0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
