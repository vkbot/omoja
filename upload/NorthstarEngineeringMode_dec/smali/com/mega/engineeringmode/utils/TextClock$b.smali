.class public final Lcom/mega/engineeringmode/utils/TextClock$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/utils/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/utils/TextClock;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/utils/TextClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock$b;->c:Lcom/mega/engineeringmode/utils/TextClock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock$b;->c:Lcom/mega/engineeringmode/utils/TextClock;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget v1, Lcom/mega/engineeringmode/utils/TextClock;->q:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lcom/mega/engineeringmode/utils/TextClock;->i:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    iget-object v1, v0, Lcom/mega/engineeringmode/utils/TextClock;->j:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v1

    iget-object v2, v0, Lcom/mega/engineeringmode/utils/TextClock;->j:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v2

    iget-boolean v3, v0, Lcom/mega/engineeringmode/utils/TextClock;->f:Z

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/time/ZonedDateTime;->withNano(I)Ljava/time/ZonedDateTime;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/time/ZonedDateTime;->withSecond(I)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/time/ZonedDateTime;->withNano(I)Ljava/time/ZonedDateTime;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    const-wide/16 v1, 0x3e8

    :cond_2
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
