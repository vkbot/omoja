.class public final Lcom/mega/engineeringmode/function/icm/IcmSettingActivity$b;
.super Lo3/i;
.source "SourceFile"

# interfaces
.implements Ln3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/i;",
        "Ln3/l<",
        "Lmega/car/hardware/CarPropertyValue<",
        "*>;",
        "Lf3/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity$b;->r:Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo3/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lmega/car/hardware/CarPropertyValue;

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v0

    const v1, 0x50000016    # 8.5899571E9f

    invoke-virtual {v0, v1}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity$b;->r:Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;

    invoke-static {p0, v0, p1}, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;->n(Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;IF)V

    sget-object p0, Lf3/g;->a:Lf3/g;

    return-object p0
.end method
