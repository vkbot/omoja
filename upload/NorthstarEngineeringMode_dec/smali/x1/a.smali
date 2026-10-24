.class public final Lx1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lx1/a;


# instance fields
.field public a:Ln0/a;

.field public b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lx1/a$a;


# direct methods
.method public static declared-synchronized a()Lx1/a;
    .locals 3

    const-class v0, Lx1/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx1/a;->d:Lx1/a;

    if-nez v1, :cond_0

    new-instance v1, Lx1/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, v1, Lx1/a;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lx1/a$a;

    invoke-direct {v2, v1}, Lx1/a$a;-><init>(Lx1/a;)V

    iput-object v2, v1, Lx1/a;->c:Lx1/a$a;

    invoke-static {}, Ln2/d;->b()Ln0/a;

    move-result-object v2

    iput-object v2, v1, Lx1/a;->a:Ln0/a;

    sput-object v1, Lx1/a;->d:Lx1/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lx1/a;->d:Lx1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lx1/a;->a:Ln0/a;

    if-eqz v0, :cond_0

    const-string v0, "EngRadioManager"

    const-string v1, " Get info "

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/a;->a:Ln0/a;

    const-string v0, "RadioWireStatus"

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-interface {p0, v1, v2, v0}, Ln0/a;->D(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
