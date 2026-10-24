.class Lmega/car/MegaCar$1;
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

    iput-object p1, p0, Lmega/car/MegaCar$1;->this$0:Lmega/car/MegaCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lmega/car/MegaCar$1;->this$0:Lmega/car/MegaCar;

    invoke-static {p0}, Lmega/car/MegaCar;->access$000(Lmega/car/MegaCar;)V

    return-void
.end method
