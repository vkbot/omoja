.class public final synthetic Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$y0ioezB4STiPTSDsBpZW3EkAQIg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmega/car/hardware/property/CarPropertyManager;

.field public final synthetic f$1:Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

.field public final synthetic f$2:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lmega/car/hardware/property/CarPropertyManager;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$y0ioezB4STiPTSDsBpZW3EkAQIg;->f$0:Lmega/car/hardware/property/CarPropertyManager;

    iput-object p2, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$y0ioezB4STiPTSDsBpZW3EkAQIg;->f$1:Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    iput-object p3, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$y0ioezB4STiPTSDsBpZW3EkAQIg;->f$2:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$y0ioezB4STiPTSDsBpZW3EkAQIg;->f$0:Lmega/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$y0ioezB4STiPTSDsBpZW3EkAQIg;->f$1:Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    iget-object v2, p0, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$y0ioezB4STiPTSDsBpZW3EkAQIg;->f$2:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Lmega/car/hardware/property/CarPropertyManager;->lambda$registerCallback$0$CarPropertyManager(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V

    return-void
.end method
