.class public final synthetic Le0/z;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/cores/HUDMassageObj;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/cores/HUDMassageObj;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/z;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/z;->c:Lcom/example/navistart/cores/HUDMassageObj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget v0, p0, Le0/z;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le0/z;->c:Lcom/example/navistart/cores/HUDMassageObj;

    .line 7
    .line 8
    sget-object v1, Lcom/example/navistart/NLService;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    :try_start_9
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lh0/b;->i()Le0/a0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Le0/a0;->e(Lcom/example/navistart/cores/HUDMassageObj;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_13

    .line 18
    .line 19
    .line 20
    :catch_13
    return-void

    .line 21
    :pswitch_14
    iget-object v0, p0, Le0/z;->c:Lcom/example/navistart/cores/HUDMassageObj;

    .line 22
    .line 23
    sget-object v1, Le0/a0;->j:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_30

    .line 30
    .line 31
    sget-object v1, Le0/a0;->i:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_30

    .line 38
    .line 39
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1, v0}, Lcom/example/navistart/cores/ProBroProxy;->SendInfoHUD(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 47
    .line 48
    .line 49
    :cond_30
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method
