.class Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;
.super Lmega/car/hardware/property/ICarPropertyEventListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/CarPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarPropertyEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmega/car/hardware/property/CarPropertyManager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmega/car/hardware/property/CarPropertyManager;


# direct methods
.method public constructor <init>(Lmega/car/hardware/property/CarPropertyManager;Lmega/car/hardware/property/CarPropertyManager;)V
    .locals 0

    iput-object p1, p0, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;->this$0:Lmega/car/hardware/property/CarPropertyManager;

    invoke-direct {p0}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/hardware/property/CarPropertyManager;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lmega/car/hardware/property/CarPropertyManager;->access$200(Lmega/car/hardware/property/CarPropertyManager;Ljava/util/List;)V

    :cond_0
    return-void
.end method
