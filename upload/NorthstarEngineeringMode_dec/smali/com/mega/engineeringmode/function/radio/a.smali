.class public final Lcom/mega/engineeringmode/function/radio/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/radio/a$b;,
        Lcom/mega/engineeringmode/function/radio/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/hardware/radio/RadioTuner;

.field public final c:Landroid/hardware/radio/RadioManager$FmBandDescriptor;

.field public final d:Landroid/hardware/radio/RadioManager$AmBandDescriptor;

.field public final e:Lcom/mega/engineeringmode/function/radio/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mega/engineeringmode/function/radio/a$b;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mega/engineeringmode/function/radio/a$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mega/engineeringmode/function/radio/a;->e:Lcom/mega/engineeringmode/function/radio/a$b;

    const-string p2, "broadcastradio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioManager;

    const-string p1, "No radio modules on device."

    const-string p2, "RadioHelper"

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lx1/b;

    invoke-direct {p1, v1}, Lx1/b;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/radio/a;->a(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Landroid/hardware/radio/RadioManager;->listModules(Ljava/util/List;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object p1

    array-length v3, p1

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, p1, v5

    iget-object v7, p0, Lcom/mega/engineeringmode/function/radio/a;->c:Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    if-nez v7, :cond_2

    invoke-virtual {v6}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v7

    if-ne v7, v4, :cond_2

    move-object v7, v6

    check-cast v7, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    iput-object v7, p0, Lcom/mega/engineeringmode/function/radio/a;->c:Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    :cond_2
    iget-object v7, p0, Lcom/mega/engineeringmode/function/radio/a;->d:Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v7

    if-nez v7, :cond_3

    check-cast v6, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    iput-object v6, p0, Lcom/mega/engineeringmode/function/radio/a;->d:Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/mega/engineeringmode/function/radio/a;->c:Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mega/engineeringmode/function/radio/a;->d:Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    if-nez p1, :cond_5

    const-string p1, "No AM and FM radio bands could be loaded."

    invoke-static {p2, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lw0/b;

    invoke-direct {p1, v4}, Lw0/b;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/radio/a;->a(Ljava/util/function/Consumer;)V

    return-void

    :cond_5
    new-instance p1, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;

    iget-object p2, p0, Lcom/mega/engineeringmode/function/radio/a;->c:Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    invoke-direct {p1, p2}, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;-><init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V

    invoke-virtual {p1, v4}, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->setStereo(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->build()Landroid/hardware/radio/RadioManager$FmBandConfig;

    new-instance p1, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;

    iget-object p2, p0, Lcom/mega/engineeringmode/function/radio/a;->d:Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    invoke-direct {p1, p2}, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;-><init>(Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V

    invoke-virtual {p1, v4}, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->setStereo(Z)Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->build()Landroid/hardware/radio/RadioManager$AmBandConfig;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/mega/engineeringmode/function/radio/a$a;

    invoke-direct {v4, p0}, Lcom/mega/engineeringmode/function/radio/a$a;-><init>(Lcom/mega/engineeringmode/function/radio/a;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/RadioManager;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)Landroid/hardware/radio/RadioTuner;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/radio/a;->b:Landroid/hardware/radio/RadioTuner;

    return-void

    :cond_6
    :goto_1
    invoke-static {p2, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lg1/j;

    invoke-direct {p1, v4}, Lg1/j;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/radio/a;->a(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 0
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/mega/engineeringmode/function/radio/a$b;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/mega/engineeringmode/function/radio/a;->e:Lcom/mega/engineeringmode/function/radio/a$b;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
