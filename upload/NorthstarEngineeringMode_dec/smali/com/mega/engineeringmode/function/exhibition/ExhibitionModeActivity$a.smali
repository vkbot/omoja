.class public final Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p0

    const v0, 0x67000082

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    return-void
.end method
