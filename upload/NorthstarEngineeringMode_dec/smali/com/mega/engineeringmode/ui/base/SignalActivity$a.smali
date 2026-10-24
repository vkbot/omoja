.class public final Lcom/mega/engineeringmode/ui/base/SignalActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/ui/base/SignalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/ui/base/SignalActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/ui/base/SignalActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/ui/base/SignalActivity$a;->c:Lcom/mega/engineeringmode/ui/base/SignalActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v0

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/base/SignalActivity$a;->c:Lcom/mega/engineeringmode/ui/base/SignalActivity;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/base/SignalActivity;->p()V

    const p0, 0x6700009a

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    return-void
.end method
