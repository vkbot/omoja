.class public final synthetic Lmega/car/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/car/MegaCar$CarServiceLifecycleListener;


# instance fields
.field public final synthetic a:Lmega/car/MegaCarProperty;


# direct methods
.method public synthetic constructor <init>(Lmega/car/MegaCarProperty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/b;->a:Lmega/car/MegaCarProperty;

    return-void
.end method


# virtual methods
.method public final onLifecycleChanged(Lmega/car/MegaCar;Z)V
    .locals 0

    iget-object p0, p0, Lmega/car/b;->a:Lmega/car/MegaCarProperty;

    invoke-static {p0, p1, p2}, Lmega/car/MegaCarProperty;->b(Lmega/car/MegaCarProperty;Lmega/car/MegaCar;Z)V

    return-void
.end method
