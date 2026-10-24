.class public final synthetic Lmega/car/-$$Lambda$MegaCar$yr5hzXsvkM8WivdhmGbdVH1q-6U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmega/car/MegaCar;


# direct methods
.method public synthetic constructor <init>(Lmega/car/MegaCar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/-$$Lambda$MegaCar$yr5hzXsvkM8WivdhmGbdVH1q-6U;->f$0:Lmega/car/MegaCar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmega/car/-$$Lambda$MegaCar$yr5hzXsvkM8WivdhmGbdVH1q-6U;->f$0:Lmega/car/MegaCar;

    invoke-virtual {v0}, Lmega/car/MegaCar;->lambda$dispatchCarReadyToMainThread$0$MegaCar()V

    return-void
.end method
