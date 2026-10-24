.class Lmega/car/MegaCar$2;
.super Ljava/lang/Object;
.source "MegaCar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/MegaCar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/car/MegaCar;


# direct methods
.method constructor <init>(Lmega/car/MegaCar;)V
    .locals 0
    .param p1, "this$0"    # Lmega/car/MegaCar;

    .line 143
    iput-object p1, p0, Lmega/car/MegaCar$2;->this$0:Lmega/car/MegaCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 146
    iget-object v0, p0, Lmega/car/MegaCar$2;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$100(Lmega/car/MegaCar;)Landroid/content/ServiceConnection;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mega.car"

    const-string v3, "com.mega.car.MegaCarService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 148
    return-void
.end method
