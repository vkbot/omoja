.class public final Ls5/b;
.super Lr5/f;
.source "SourceFile"

# interfaces
.implements Lr5/d;


# instance fields
.field public final d:Ljava/text/SimpleDateFormat;

.field public e:Lm5/h;

.field public f:Ls5/a;

.field public g:Z

.field public final h:J


# direct methods
.method public constructor <init>(Ls5/a;Lm5/h;)V
    .locals 3

    invoke-direct {p0}, Lr5/f;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ls5/b;->d:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls5/b;->g:Z

    iput-object p1, p0, Ls5/b;->f:Ls5/a;

    iget-object p1, p2, Lm5/h;->a:Lm5/z0;

    iget-wide v0, p1, Lm5/z0;->k:J

    iput-wide v0, p0, Ls5/b;->h:J

    invoke-virtual {p2, p0}, Lm5/h;->A0(Ljava/lang/Object;)Lm5/h;

    move-result-object p1

    iput-object p1, p0, Ls5/b;->e:Lm5/h;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Li5/c0;
    .locals 1

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object p0, Li5/m1;->V:Li5/c0;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    sget-object p0, Li5/u0;->A:Li5/c0;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object p0, Li5/p1;->a0:Li5/c0;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    sget-object p0, Li5/b1;->H:Li5/c0;

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    sget-object p0, Li5/s0;->z:Li5/c0;

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object p0, Li5/m0;->t:Li5/c0;

    goto :goto_0

    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object p0, Li5/g2;->m0:Li5/c0;

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lnet/sf/saxon/value/GDateValue;

    if-eqz v0, :cond_7

    sget-object p0, Li5/q0;->v:Li5/c0;

    goto :goto_0

    :cond_7
    instance-of p0, p0, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz p0, :cond_8

    sget-object p0, Li5/r0;->w:Li5/c0;

    goto :goto_0

    :cond_8
    sget-object p0, Li5/i0;->s:Li5/c0;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Lm5/h;)Z
    .locals 6

    iget-boolean v0, p0, Ls5/b;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Ls5/b;->g:Z

    iget-object v0, p0, Ls5/b;->e:Lm5/h;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lm5/h;->a:Lm5/z0;

    iget-wide v2, v2, Lm5/z0;->k:J

    iget-wide v4, p0, Ls5/b;->h:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string p1, "Document changed during select"

    invoke-direct {p0, p1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v2, p0, Ls5/b;->f:Ls5/a;

    invoke-virtual {v0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Ls5/a;->c(Lm5/o0$a;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lorg/w3c/dom/Node;

    if-nez v4, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/Date;

    if-eqz v5, :cond_3

    iget-object v5, p0, Ls5/b;->d:Ljava/text/SimpleDateFormat;

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    instance-of v5, v4, Lnet/sf/saxon/value/GDateValue;

    if-eqz v5, :cond_4

    check-cast v4, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {v4}, Lnet/sf/saxon/value/GDateValue;->getStringValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    instance-of v5, v4, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v5, :cond_5

    check-cast v4, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v4}, Lnet/sf/saxon/value/DateTimeValue;->getStringValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_6

    check-cast v4, Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    iget-object v5, p1, Lm5/h;->a:Lm5/z0;

    :try_start_0
    invoke-virtual {v5}, Lm5/z0;->C()Lm5/o0$a;

    move-result-object v5

    invoke-interface {v5}, Lm5/o0$a;->k()Lm5/h;

    move-result-object v5

    invoke-virtual {v5, v4}, Lm5/h;->p0(Ljava/lang/String;)V

    invoke-static {v2}, Ls5/b;->h(Ljava/lang/Object;)Li5/c0;

    move-result-object v2

    invoke-static {v5, v2, v3}, Lm5/z0;->d(Lm5/h;Li5/c0;Li5/z1;)V

    invoke-virtual {v5}, Lm5/h;->Z()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    check-cast v2, Lm5/o0$a;

    invoke-interface {v2}, Lm5/o0$a;->k()Lm5/h;

    move-result-object v5

    :goto_3
    invoke-virtual {p1, v5}, Lm5/h;->a(Lm5/h;)V

    invoke-virtual {v5}, Lm5/h;->h0()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Ls5/b;->b()V

    iput-object v3, p0, Ls5/b;->f:Ls5/a;

    const/4 p0, 0x1

    return p0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Ls5/b;->e:Lm5/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm5/h;->h0()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls5/b;->e:Lm5/h;

    :cond_0
    return-void
.end method
