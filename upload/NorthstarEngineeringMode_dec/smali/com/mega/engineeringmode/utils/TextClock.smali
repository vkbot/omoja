.class public Lcom/mega/engineeringmode/utils/TextClock;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/utils/TextClock$c;
    }
.end annotation


# static fields
.field public static final synthetic q:I


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public f:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public g:Ljava/lang/CharSequence;

.field public h:Z

.field public i:Z

.field public j:Ljava/util/Calendar;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Lcom/mega/engineeringmode/utils/TextClock$c;

.field public n:Landroid/icu/text/SimpleDateFormat;

.field public final o:Lcom/mega/engineeringmode/utils/TextClock$a;

.field public final p:Lcom/mega/engineeringmode/utils/TextClock$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/mega/engineeringmode/utils/TextClock$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/utils/TextClock$a;-><init>(Lcom/mega/engineeringmode/utils/TextClock;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->o:Lcom/mega/engineeringmode/utils/TextClock$a;

    new-instance v0, Lcom/mega/engineeringmode/utils/TextClock$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/utils/TextClock$b;-><init>(Lcom/mega/engineeringmode/utils/TextClock;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->p:Lcom/mega/engineeringmode/utils/TextClock$b;

    sget-object v2, Ld1/c;->d:[I

    invoke-virtual {p1, p2, v2, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v7

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->a:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->b:Ljava/lang/CharSequence;

    const/4 p1, 0x2

    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->a:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    const-string p1, "hm"

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/utils/TextClock;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->a:Ljava/lang/CharSequence;

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->b:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    const-string p1, "Hm"

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/utils/TextClock;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->b:Ljava/lang/CharSequence;

    :cond_1
    iget-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/utils/TextClock;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->a()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->b:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->a:Ljava/lang/CharSequence;

    const-string v2, "Hm"

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/utils/TextClock;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->e:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->d:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/mega/engineeringmode/utils/TextClock;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->g:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->a:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->b:Ljava/lang/CharSequence;

    const-string v2, "hm"

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/utils/TextClock;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_6

    if-nez v1, :cond_5

    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_2
    iput-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->e:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->c:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/mega/engineeringmode/utils/TextClock;->d:Ljava/lang/CharSequence;

    if-nez v1, :cond_8

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_3

    :cond_8
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->g:Ljava/lang/CharSequence;

    :goto_4
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->e:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->n:Landroid/icu/text/SimpleDateFormat;

    iget-boolean v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->f:Z

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->e:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v4, v2

    move v5, v4

    :goto_5
    if-ge v4, v3, :cond_c

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_a

    xor-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    if-nez v5, :cond_b

    const/16 v7, 0x73

    if-ne v6, v7, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    iput-boolean v2, p0, Lcom/mega/engineeringmode/utils/TextClock;->f:Z

    iget-boolean v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->i:Z

    if-eqz v1, :cond_d

    if-eq v0, v2, :cond_d

    iget-object p0, p0, Lcom/mega/engineeringmode/utils/TextClock;->p:Lcom/mega/engineeringmode/utils/TextClock$b;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock$b;->run()V

    :cond_d
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->j:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->j:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->j:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :try_start_0
    iget-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->n:Landroid/icu/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->j:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->g:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->j:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e()V
    .locals 4

    iget-boolean v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->m:Lcom/mega/engineeringmode/utils/TextClock$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mega/engineeringmode/utils/TextClock$c;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mega/engineeringmode/utils/TextClock$c;-><init>(Lcom/mega/engineeringmode/utils/TextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->m:Lcom/mega/engineeringmode/utils/TextClock$c;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mega/engineeringmode/utils/TextClock;->l:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/utils/TextClock;->m:Lcom/mega/engineeringmode/utils/TextClock$c;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mega/engineeringmode/utils/TextClock;->m:Lcom/mega/engineeringmode/utils/TextClock$c;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getFormat()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/utils/TextClock;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object p0, p0, Lcom/mega/engineeringmode/utils/TextClock;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object p0, p0, Lcom/mega/engineeringmode/utils/TextClock;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/utils/TextClock;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->h:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mega/engineeringmode/utils/TextClock;->o:Lcom/mega/engineeringmode/utils/TextClock$a;

    invoke-static {v1, v4, v2, v0, v3}, Ld/f;->U(Landroid/content/Context;Lcom/mega/engineeringmode/utils/TextClock$a;Landroid/os/UserHandle;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->e()V

    iget-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/utils/TextClock;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->o:Lcom/mega/engineeringmode/utils/TextClock$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->m:Lcom/mega/engineeringmode/utils/TextClock$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->m:Lcom/mega/engineeringmode/utils/TextClock$c;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->h:Z

    :cond_1
    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->i:Z

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/TextClock;->p:Lcom/mega/engineeringmode/utils/TextClock$b;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->i:Z

    invoke-virtual {v1}, Lcom/mega/engineeringmode/utils/TextClock$b;->run()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->i:Z

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->a()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->a()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->a()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->a()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->l:Z

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->a()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    iget-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->m:Lcom/mega/engineeringmode/utils/TextClock$c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/engineeringmode/utils/TextClock;->m:Lcom/mega/engineeringmode/utils/TextClock$c;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->e()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/utils/TextClock;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    return-void
.end method
