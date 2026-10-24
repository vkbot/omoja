.class public final Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lj3/e;
    c = "com.mega.engineeringmode.function.ethernet.EthernetTestActivity$onCreate$1$1$request1$1"
    f = "EthernetTestActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;Ljava/lang/String;Ljava/lang/String;Lh3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh3/d<",
            "-",
            "Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->c:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->r:Ljava/lang/String;

    iput-object p3, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->x:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lj3/g;-><init>(ILh3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lh3/d;)Lh3/d;
    .locals 2
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

    new-instance p1, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->x:Ljava/lang/String;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->c:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;-><init>(Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;Ljava/lang/String;Ljava/lang/String;Lh3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv3/z;

    check-cast p2, Lh3/d;

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->create(Ljava/lang/Object;Lh3/d;)Lh3/d;

    move-result-object p0

    check-cast p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;

    sget-object p1, Lf3/g;->a:Lf3/g;

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Lb1/a;->z(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->c:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

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

    iget-object p1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->r:Ljava/lang/String;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;->x:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sget v0, Lp1/b;->a:I

    const-string/jumbo v0, "ping -w "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "GBK"

    invoke-direct {v0, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_2
    return-object p0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    :cond_2
    :goto_4
    throw p0
.end method
