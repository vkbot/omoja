.class public final Lcom/mega/engineeringmode/function/tbox/b$c;
.super Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/tbox/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/tbox/b;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/tbox/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/b$c;->a:Lcom/mega/engineeringmode/function/tbox/b;

    invoke-direct {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b$c;->a:Lcom/mega/engineeringmode/function/tbox/b;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/tbox/b;->c:Lcom/mega/engineeringmode/function/tbox/b$g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ld/f;->c0(Ljava/util/List;)[B

    move-result-object p2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    const-string p2, "deserialize: "

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "TBoxManager"

    invoke-static {v3, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class p2, Lcom/mega/engineeringmode/function/tbox/a$a;

    invoke-virtual {v1, v2, p2}, Lcom/mega/engineeringmode/function/tbox/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mega/engineeringmode/function/tbox/a$a;

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v5, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string p2, "BaseConverter"

    const-string v5, "deserialize failed! "

    invoke-static {p2, v5}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v4

    :cond_1
    const/4 v5, 0x6

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v6, "TboxConnectStatusNotification"

    iget-object v7, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-class p2, Lcom/mega/engineeringmode/function/tbox/b$f;

    invoke-virtual {v1, v2, p2}, Lcom/mega/engineeringmode/function/tbox/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mega/engineeringmode/function/tbox/b$f;

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isTBoxConnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/mega/engineeringmode/function/tbox/b$f;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p2, p2, Lcom/mega/engineeringmode/function/tbox/b$f;->state:Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "NetworkStatusNotification"

    iget-object v4, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v4, Landroid/util/Pair;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "VehicleDiagNotification"

    iget-object v4, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v4, Landroid/util/Pair;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "CallStatusNotification"

    iget-object v4, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v4, Landroid/util/Pair;

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "GPSNotification"

    iget-object v4, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v4, Landroid/util/Pair;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "TBoxVersionResponse"

    iget-object v4, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v4, Landroid/util/Pair;

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "SIMCardInfoResponse"

    iget-object v4, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v4, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "IMEIInfoResponse"

    iget-object v4, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v4, Landroid/util/Pair;

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    const-string v1, "VINResponse"

    iget-object v4, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v4, Landroid/util/Pair;

    const/16 p2, 0x8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_c
    const-string v1, "BleModuleInfoNotification"

    iget-object v4, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v4, Landroid/util/Pair;

    const/16 p2, 0x9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_d
    const-string v1, "TboxCanConfigResponse"

    iget-object v4, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v4, Landroid/util/Pair;

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_e
    const-string v1, "LogResponse"

    iget-object p2, p2, Lcom/mega/engineeringmode/function/tbox/a$a;->eventType:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    new-instance v4, Landroid/util/Pair;

    const/16 p2, 0xb

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_f
    new-instance v4, Landroid/util/Pair;

    const/16 p2, 0x64

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v4, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    if-nez v4, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "parse content failed, topic : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "MessageCallback  onReceive first "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "  second "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, v0, Lcom/mega/engineeringmode/function/tbox/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p2, "1"

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_11
    iget-object p1, v0, Lcom/mega/engineeringmode/function/tbox/b;->j:Landroid/os/Handler;

    new-instance p2, Ls0/h;

    invoke-direct {p2, v5, p0, v4}, Ls0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
