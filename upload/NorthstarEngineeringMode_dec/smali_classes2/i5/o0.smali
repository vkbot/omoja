.class public final Li5/o0;
.super Ljava/util/GregorianCalendar;
.source "SourceFile"


# static fields
.field public static c:I = -0x80000000

.field public static final r:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Li5/o0;->r:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final computeTime()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->isSet(I)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_3

    sget v2, Li5/o0;->c:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "user.defaultyear"

    invoke-static {v3}, Lb1/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Li5/o0;->c:I

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :cond_0
    sput v2, Li5/o0;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {v3}, Ld/f;->L(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    sput v2, Li5/o0;->c:I

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ld/f;->W(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    sget v2, Li5/o0;->c:I

    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    :cond_3
    :try_start_1
    invoke-super {p0}, Ljava/util/GregorianCalendar;->computeTime()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->clear(I)V

    :cond_4
    return-void

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->clear(I)V

    :cond_5
    throw v2
.end method

.method public final get(I)I
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljava/util/GregorianCalendar;->isTimeSet:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->internalGet(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Li5/d;

    invoke-direct {v0, p0}, Li5/d;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0}, Li5/d;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
