.class public final Lb2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lb2/a;

.field public final d:Lvendor/mega/message_center/V1_0/IMessageCenter;

.field public final e:Lb2/e$a;


# direct methods
.method public constructor <init>(Lb2/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb2/e;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb2/e;->b:Ljava/util/ArrayList;

    new-instance v0, Lb2/e$a;

    invoke-direct {v0, p0}, Lb2/e$a;-><init>(Lb2/e;)V

    iput-object v0, p0, Lb2/e;->e:Lb2/e$a;

    iput-object p1, p0, Lb2/e;->c:Lb2/a;

    :try_start_0
    invoke-static {}, Lvendor/mega/message_center/V1_0/IMessageCenter;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object p1

    iput-object p1, p0, Lb2/e;->d:Lvendor/mega/message_center/V1_0/IMessageCenter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "SpeakerMessagePresenter"

    const-string v0, "get message center service error"

    invoke-static {p1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lb2/e;->b:Ljava/util/ArrayList;

    const-string v0, "car_engineering_mode/speaker/req"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "car_engineering_mode/speaker/resp"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x76

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iget-object p0, p0, Lb2/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Z
    .locals 3

    const-string/jumbo v0, "send msg, topic= %s, data = %s"

    const-string v1, "car_engineering_mode/speaker/req"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpeakerMessagePresenter"

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lb2/e;->d:Lvendor/mega/message_center/V1_0/IMessageCenter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "message center is null"

    invoke-static {v2, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, v1, p1}, Lvendor/mega/message_center/V1_0/IMessageCenter;->sendMsg(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo p0, "send message error, topic==car_engineering_mode/speaker/req"

    invoke-static {v2, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
