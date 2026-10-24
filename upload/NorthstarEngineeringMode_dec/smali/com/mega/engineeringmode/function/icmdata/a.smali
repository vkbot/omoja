.class public final Lcom/mega/engineeringmode/function/icmdata/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public a:Lmega/car/MegaCarProperty;

.field public b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/content/Context;

.field public d:Landroid/os/Handler;

.field public e:Lcom/mega/engineeringmode/function/icmdata/a$a;

.field public f:[I


# direct methods
.method public static a(Lcom/mega/engineeringmode/function/icmdata/a;ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/mega/engineeringmode/function/icmdata/a;->f:[I

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3, p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "eventId = %s, pos = %s,value = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "a"

    invoke-static {v3, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v1, v4, :cond_4

    const v2, 0x5000000e

    if-eq p1, v2, :cond_2

    const v2, 0x50000010

    if-ne p1, v2, :cond_3

    :cond_2
    sget-object p1, Ln2/c;->a:Ljava/lang/String;

    const-string/jumbo p1, "ro.ecu.config.FUEL_TANK_CAPACITY"

    invoke-static {p1, v0}, Ld/f;->z(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    const-string p2, "--"

    :cond_3
    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/a;->c:Landroid/content/Context;

    instance-of p1, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->j:Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;

    if-eqz p0, :cond_4

    iget-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/engineeringmode/function/icmdata/b;

    iput-object p2, v0, Lcom/mega/engineeringmode/function/icmdata/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final b(Lcom/mega/engineeringmode/function/icmdata/b;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updataTopicId  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/mega/engineeringmode/function/icmdata/b;->id:I

    const-string v2, "a"

    invoke-static {v0, v1, v2}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->valueType:I

    iget-object v1, p0, Lcom/mega/engineeringmode/function/icmdata/a;->a:Lmega/car/MegaCarProperty;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/a;->f:[I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->id:I

    aget p0, p0, v0

    iput p0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->a:I

    invoke-virtual {v1, p0}, Lmega/car/MegaCarProperty;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Lmega/car/MegaCarProperty;->getFloatProp(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->b:Ljava/lang/String;

    goto :goto_3

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    iget v0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->id:I

    aget p0, p0, v0

    iput p0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->a:I

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lmega/car/MegaCarProperty;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getValue "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p0, ""

    :goto_2
    iput-object p0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->b:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget v0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->id:I

    aget p0, p0, v0

    iput p0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->a:I

    invoke-virtual {v1, p0}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->b:Ljava/lang/String;

    :cond_5
    :goto_3
    iget p0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->a:I

    const v0, 0x5000000e

    if-eq p0, v0, :cond_6

    const v0, 0x50000010

    if-ne p0, v0, :cond_7

    :cond_6
    sget-object p0, Ln2/c;->a:Ljava/lang/String;

    const/4 p0, 0x0

    const-string/jumbo v0, "ro.ecu.config.FUEL_TANK_CAPACITY"

    invoke-static {v0, p0}, Ld/f;->z(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "--"

    iput-object p0, p1, Lcom/mega/engineeringmode/function/icmdata/b;->b:Ljava/lang/String;

    :cond_7
    return-void
.end method
