.class public final Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;


# direct methods
.method public constructor <init>(Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController$a;->a:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;

    return-void
.end method


# virtual methods
.method public final onStateChanged(II)V
    .locals 1

    new-instance p2, Lf/k;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0, p0}, Lf/k;-><init>(IILjava/lang/Object;)V

    invoke-static {p2}, Le/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
