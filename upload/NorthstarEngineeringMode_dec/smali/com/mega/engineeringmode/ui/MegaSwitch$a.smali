.class public final Lcom/mega/engineeringmode/ui/MegaSwitch$a;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/ui/MegaSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/mega/engineeringmode/ui/MegaSwitch;",
        ">;"
    }
.end annotation


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/mega/engineeringmode/ui/MegaSwitch;

    iget p0, p1, Lcom/mega/engineeringmode/ui/MegaSwitch;->A:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-static {p1, p2}, Lcom/mega/engineeringmode/ui/MegaSwitch;->a(Lcom/mega/engineeringmode/ui/MegaSwitch;F)V

    return-void
.end method
