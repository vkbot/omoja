.class public final Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;
.super Lj3/g;
.source "SourceFile"

# interfaces
.implements Ln3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj3/g;",
        "Ln3/p<",
        "Lv3/z;",
        "Lh3/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lj3/e;
    c = "com.mega.engineeringmode.function.ethernet.EthernetTestActivity$onCreate$1$1$request2$1"
    f = "EthernetTestActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

.field public final synthetic r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;Ljava/lang/String;Lh3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;",
            "Ljava/lang/String;",
            "Lh3/d<",
            "-",
            "Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;->c:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;->r:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lj3/g;-><init>(ILh3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lh3/d;)Lh3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh3/d<",
            "*>;)",
            "Lh3/d<",
            "Lf3/g;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;->c:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;->r:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;-><init>(Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;Ljava/lang/String;Lh3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv3/z;

    check-cast p2, Lh3/d;

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;->create(Ljava/lang/Object;Lh3/d;)Lh3/d;

    move-result-object p0

    check-cast p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;

    sget-object p1, Lf3/g;->a:Lf3/g;

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lb1/a;->z(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;->c:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "thread is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;->r:Ljava/lang/String;

    sget p1, Lp1/b;->a:I

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    const/16 p1, 0xbb8

    invoke-virtual {p0, p1}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
