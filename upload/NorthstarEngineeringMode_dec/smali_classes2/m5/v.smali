.class public final synthetic Lm5/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lm5/y;


# direct methods
.method public synthetic constructor <init>(ILm5/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm5/v;->c:I

    iput-object p2, p0, Lm5/v;->r:Lm5/y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lm5/v;->c:I

    iget-object p0, p0, Lm5/v;->r:Lm5/y;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->x0()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->g0()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
