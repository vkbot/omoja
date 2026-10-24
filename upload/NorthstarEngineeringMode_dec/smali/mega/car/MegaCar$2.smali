.class Lmega/car/MegaCar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/MegaCar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/car/MegaCar;


# direct methods
.method public constructor <init>(Lmega/car/MegaCar;)V
    .locals 0

    iput-object p1, p0, Lmega/car/MegaCar$2;->this$0:Lmega/car/MegaCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object p0, p0, Lmega/car/MegaCar$2;->this$0:Lmega/car/MegaCar;

    invoke-static {p0}, Lmega/car/MegaCar;->access$100(Lmega/car/MegaCar;)Landroid/content/ServiceConnection;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.mega.car"

    const-string v2, "com.mega.car.MegaCarService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
