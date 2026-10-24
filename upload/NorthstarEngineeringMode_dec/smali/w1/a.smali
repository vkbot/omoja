.class public final synthetic Lw1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/car/MegaCar$CarServiceLifecycleListener;


# virtual methods
.method public final onLifecycleChanged(Lmega/car/MegaCar;Z)V
    .locals 0

    sget p0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->q:I

    const-string p0, " car ready : "

    const-string p1, "KeyInputActivity"

    invoke-static {p0, p2, p1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
