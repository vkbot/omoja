.class public Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/mega/engineeringmode/function/tbox/b$b;
.implements Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;,
        Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$b;,
        Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$a;,
        Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$e;,
        Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$d;
    }
.end annotation


# static fields
.field public static final u:Ljava/util/HashSet;


# instance fields
.field public a:Landroid/view/View;

.field public final b:Lcom/google/gson/Gson;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Z

.field public t:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Integer;

    const v2, 0x20101006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x20101009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x20101010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x20101008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const v2, 0x20101007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const v2, 0x20101020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x20101004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->u:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->b:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final g(ILjava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onMessage , type = %s, message = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBoxBaseFragment"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    const-class p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;

    invoke-virtual {p0, p2, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;->tBoxVersion:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->d:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;->ecuHardwareNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->e:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;->ecuSoftwareNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->f:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;->productID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->g:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;->hardwareVersion:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->h:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;->mcuVersion:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->i:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;->armVersion:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->j:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$c;->modemVersion:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    const-class p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$b;

    invoke-virtual {p0, p2, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$b;

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->k:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$b;->iccid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->l:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$b;->msisdn:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->m:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$b;->imsi:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->n:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$b;->network:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, ""

    goto :goto_0

    :cond_4
    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "CMCC"

    goto :goto_0

    :cond_5
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "ChinaUnicom"

    goto :goto_0

    :cond_6
    const-string p2, "2"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, "ChinaTelecom"

    goto :goto_0

    :cond_7
    const-string p2, "3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p1, "Others"

    :cond_8
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    const/4 v0, 0x7

    if-ne p1, v0, :cond_b

    const-class p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$a;

    invoke-virtual {p0, p2, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$a;

    if-nez p1, :cond_a

    return-void

    :cond_a
    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->o:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$a;->imei:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    const/16 v0, 0x8

    if-ne p1, v0, :cond_d

    const-class p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$e;

    invoke-virtual {p0, p2, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$e;

    if-nez p1, :cond_c

    return-void

    :cond_c
    iget-object p1, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$e;->vin:Ljava/lang/String;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->p:Landroid/widget/TextView;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_d
    const/16 v0, 0xa

    if-ne p1, v0, :cond_f

    const-class p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$d;

    invoke-virtual {p0, p2, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$d;

    if-nez p1, :cond_e

    return-void

    :cond_e
    iget-object p1, p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment$d;->canConfig:Ljava/lang/String;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->q:Landroid/widget/TextView;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_f
    const/16 v0, 0x9

    if-ne p1, v0, :cond_10

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->p(Ljava/lang/String;)V

    :cond_11
    :goto_1
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "TBoxBaseFragment"

    const-string v1, "deserialize 111: "

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->b:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "deserialize failed with "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
    .locals 2

    const-string/jumbo v0, "onChangeEvent: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBoxBaseFragment"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, "carPropertyValue == null"

    invoke-static {v1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const v1, 0x20101008

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->p:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v1, 0x20101006

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->g(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const v1, 0x20101009

    if-ne v0, v1, :cond_3

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->g(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const v1, 0x20101010

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->o:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const v1, 0x20101007

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const v1, 0x20101020

    if-ne v0, v1, :cond_6

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->q:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const v1, 0x20101004

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->p(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object p2, Ln2/c;->a:Ljava/lang/String;

    const-string p3, "T28"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0d0081

    goto :goto_0

    :cond_0
    const p2, 0x7f0d0082

    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->c:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03dd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->e:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->f:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->g:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->h:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03d8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->i:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03e5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->j:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03e0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->k:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->l:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->m:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03e8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->n:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->o:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->p:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->q:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03d9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->r:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    const p2, 0x7f0a03ea

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->t:Landroid/widget/TextView;

    const-string/jumbo p1, "ro.ecu.config.IDCU"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ld/f;->z(Ljava/lang/String;I)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    move p2, p3

    :cond_1
    iput-boolean p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->s:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mHasIDCU = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->s:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TBoxBaseFragment"

    invoke-static {p2, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->s:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p1

    sget-object p2, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->u:Ljava/util/HashSet;

    invoke-virtual {p1, p0, p2}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/mega/engineeringmode/function/tbox/b;->n:Lcom/mega/engineeringmode/function/tbox/b;

    invoke-virtual {p1, p0}, Lcom/mega/engineeringmode/function/tbox/b;->a(Lcom/mega/engineeringmode/function/tbox/b$b;)V

    :goto_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->a:Landroid/view/View;

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->s:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/mega/engineeringmode/function/tbox/b;->n:Lcom/mega/engineeringmode/function/tbox/b;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/tbox/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v0

    sget-object v1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->u:Ljava/util/HashSet;

    invoke-virtual {v0, p0, v1}, Lmega/car/MegaCarProperty;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method public final onErrorEvent(II)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "id = %s, area = %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TBoxBaseFragment"

    invoke-static {p1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->s:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/mega/engineeringmode/function/tbox/b;->n:Lcom/mega/engineeringmode/function/tbox/b;

    const-string p1, "TBoxVersionRequest"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/tbox/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SIMCardInfoRequest"

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/tbox/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "IMEIInfoRequest"

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/tbox/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "VINRequest"

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/tbox/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BleModuleInfoRequest"

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/tbox/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "TboxCanConfigRequest"

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/tbox/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p0

    new-instance p1, Lmega/car/hardware/CarPropertyValue;

    const p2, 0x20101006

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p0

    new-instance p1, Lmega/car/hardware/CarPropertyValue;

    const p2, 0x20101009

    invoke-direct {p1, p2, v0}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p0

    new-instance p1, Lmega/car/hardware/CarPropertyValue;

    const p2, 0x20101010

    invoke-direct {p1, p2, v0}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p0

    new-instance p1, Lmega/car/hardware/CarPropertyValue;

    const p2, 0x20101008

    invoke-direct {p1, p2, v0}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p0

    new-instance p1, Lmega/car/hardware/CarPropertyValue;

    const p2, 0x20101007

    invoke-direct {p1, p2, v0}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p0

    new-instance p1, Lmega/car/hardware/CarPropertyValue;

    const p2, 0x20101020

    invoke-direct {p1, p2, v0}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p0

    new-instance p1, Lmega/car/hardware/CarPropertyValue;

    const p2, 0x20101004

    invoke-direct {p1, p2, v0}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    :goto_0
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "refreshNetworkStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBoxBaseFragment"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;

    invoke-virtual {p0, p1, v0}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;->t:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->getSignalStrength()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
