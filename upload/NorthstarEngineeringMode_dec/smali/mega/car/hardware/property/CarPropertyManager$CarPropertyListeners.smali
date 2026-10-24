.class Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;
.super Lmega/car/hardware/property/CarRatedFloatListeners;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/CarPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarPropertyListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmega/car/hardware/property/CarRatedFloatListeners<",
        "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmega/car/hardware/property/CarPropertyManager;


# direct methods
.method public constructor <init>(Lmega/car/hardware/property/CarPropertyManager;F)V
    .locals 0

    iput-object p1, p0, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Lmega/car/hardware/property/CarPropertyManager;

    invoke-direct {p0, p2}, Lmega/car/hardware/property/CarRatedFloatListeners;-><init>(F)V

    return-void
.end method

.method public static synthetic a(Lmega/car/hardware/CarPropertyValue;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->lambda$onErrorEvent$1(Lmega/car/hardware/CarPropertyValue;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method

.method public static synthetic b(Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLmega/car/hardware/property/CarPropertyEvent;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->lambda$onPropertyChanged$0(JLmega/car/hardware/property/CarPropertyEvent;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method

.method private static synthetic lambda$onErrorEvent$1(Lmega/car/hardware/CarPropertyValue;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 1

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getAreaId()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onErrorEvent(II)V

    return-void
.end method

.method private synthetic lambda$onPropertyChanged$0(JLmega/car/hardware/property/CarPropertyEvent;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 0

    invoke-virtual {p0, p4, p1, p2}, Lmega/car/hardware/property/CarRatedFloatListeners;->needUpdateForSelectedListener(Ljava/lang/Object;J)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    invoke-interface {p4, p0}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onErrorEvent(Lmega/car/hardware/property/CarPropertyEvent;)V
    .locals 2

    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object p1

    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Lmega/car/hardware/property/CarPropertyManager;

    invoke-static {v0}, Lmega/car/hardware/property/CarPropertyManager;->access$000(Lmega/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmega/car/hardware/property/CarRatedFloatListeners;->getListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lmega/car/hardware/property/c;

    invoke-direct {p0, p1}, Lmega/car/hardware/property/c;-><init>(Lmega/car/hardware/CarPropertyValue;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPropertyChanged(Lmega/car/hardware/property/CarPropertyEvent;)V
    .locals 5

    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Lmega/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lmega/car/hardware/property/CarRatedFloatListeners;->needUpdateForAreaId(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lmega/car/hardware/property/CarPropertyManager;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dropping old property data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmega/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Lmega/car/hardware/CarPropertyValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Lmega/car/hardware/property/CarPropertyManager;

    invoke-static {v2}, Lmega/car/hardware/property/CarPropertyManager;->access$000(Lmega/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmega/car/hardware/property/CarRatedFloatListeners;->getListeners()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lmega/car/hardware/property/b;

    invoke-direct {v2, p0, v0, v1, p1}, Lmega/car/hardware/property/b;-><init>(Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLmega/car/hardware/property/CarPropertyEvent;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
