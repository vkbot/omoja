.class public final synthetic Lx1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx1/b;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget p0, p0, Lx1/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result p0

    const-string v0, "Not impl"

    packed-switch p0, :pswitch_data_1

    :pswitch_0
    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->g0()V

    :cond_0
    invoke-virtual {p0}, Lm5/h;->b0()Z

    invoke-virtual {p0}, Lm5/h;->q()Lm5/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lm5/h;->J()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3, v3, v2}, Lm5/e;->d(IILjava/lang/Object;)V

    invoke-static {v0, v0}, Lm5/e;->c(Lm5/e;Lm5/e;)Lm5/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lm5/e;->b:Lm5/e;

    if-eqz v1, :cond_3

    :goto_1
    iget-object v1, v0, Lm5/e;->b:Lm5/e;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3, v3, v2}, Lm5/e;->d(IILjava/lang/Object;)V

    iget-object v1, v0, Lm5/e;->b:Lm5/e;

    invoke-static {v0, v1}, Lm5/e;->c(Lm5/e;Lm5/e;)Lm5/e;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v1, 0x7fffffff

    iput v1, v0, Lm5/e;->f:I

    :cond_3
    invoke-virtual {p0, v0}, Lm5/h;->l0(Lm5/e;)V

    :cond_4
    invoke-virtual {p0}, Lm5/h;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm5/h;->h0()V

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p0

    iget-object v0, p0, Lm5/z0;->x:Lm5/z0$m;

    iget-object v1, v0, Lm5/z0$m;->b:Lm5/o0$a;

    const-wide/16 v2, -0x1

    if-ne v1, p1, :cond_5

    iput-wide v2, v0, Lm5/z0$m;->a:J

    :cond_5
    iget-object p0, p0, Lm5/z0;->y:Lm5/z0$m;

    iget-object v0, p0, Lm5/z0$m;->b:Lm5/o0$a;

    if-ne v0, p1, :cond_6

    iput-wide v2, p0, Lm5/z0$m;->a:J

    goto :goto_2

    :pswitch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    :pswitch_3
    return-void

    :pswitch_4
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->unsetLeft()V

    return-void

    :pswitch_5
    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->unsetLeft()V

    return-void

    :pswitch_6
    check-cast p1, Lcom/mega/engineeringmode/function/radio/a$b;

    invoke-interface {p1}, Lcom/mega/engineeringmode/function/radio/a$b;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
