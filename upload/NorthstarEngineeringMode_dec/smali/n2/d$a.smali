.class public final Ln2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln2/d;->b()Ln0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# virtual methods
.method public final binderDied()V
    .locals 4

    sget-object v0, Ln2/d;->a:Ln0/a;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x0

    sput-object p0, Ln2/d;->a:Ln0/a;

    sget p0, Ln2/d;->c:I

    add-int/lit8 v0, p0, 0x1

    sput v0, Ln2/d;->c:I

    const/16 v0, 0xa

    const-string v1, "EngineerModeManager"

    if-ge p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "retry to get engineering_mode_service service\uff1a"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Ln2/d;->c:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lv1/d;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lv1/d;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const-string p0, "binderDied"

    invoke-static {v1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
